import 'package:aws_s3_client_extensions_to_serverpod/src/utils/aws_s3_request_variables.dart';

class AwsS3RequestBuilder {
  static const _service = "s3";

  final String _secretKey;
  final String _accessKey;
  final String _host;
  final String _region;
  final String? _sessionToken;

  const AwsS3RequestBuilder({
    required String secretKey,
    required String accessKey,
    required String host,
    required String region,
    String? sessionToken,
  })  : _secretKey = secretKey,
        _accessKey = accessKey,
        _host = host,
        _region = region,
        _sessionToken = sessionToken;

  Uri presignedUrl({
    required String key,
    String method = "GET",
    Map<String, String>? queryParams,
    Map<String, String>? signedParams,
    int expiresInSeconds = 900, // 15 minutes
  }) {
    final v1 = AwsS3RequestPreparatoryVariables.compute(
      host: _host,
      region: _region,
      service: _service,
      secretKey: _secretKey,
      signedParams: signedParams,
      sessionToken: _sessionToken,
      unsignedPayload: true,
    );

    final expandedQueryParams = <String, String>{
      "X-Amz-Algorithm": "AWS4-HMAC-SHA256",
      "X-Amz-Credential": "$_accessKey/${v1.credentialScope}",
      "X-Amz-Date": v1.datetime,
      "X-Amz-Expires": expiresInSeconds.toString(),
      "X-Amz-SignedHeaders": v1.formattedSignedParams.listed,
      if (queryParams != null) ...queryParams,
    };
    final v2 = AwsS3RequestVariables.compute(
      v1,
      method: method,
      key: key,
      queryParams: expandedQueryParams,
    );

    return Uri.https(
      _host,
      key,
      <String, String>{
        ...expandedQueryParams,
        "X-Amz-Signature": v2.signature,
      },
    );
  }

  AwsS3Request buildRequest({
    required String key,
    String method = "GET",
    Map<String, String>? queryParams,
    Map<String, String>? signedParams,
  }) {
    final uri = Uri.https(_host, key, queryParams);
    final v1 = AwsS3RequestPreparatoryVariables.compute(
      host: _host,
      region: _region,
      service: _service,
      secretKey: _secretKey,
      signedParams: signedParams,
      sessionToken: _sessionToken,
    );
    final v2 = AwsS3RequestVariables.compute(
      v1,
      method: method,
      key: key,
      queryParams: queryParams,
    );

    final authorization = [
      'AWS4-HMAC-SHA256 Credential=$_accessKey/${v2.credentialScope}',
      'SignedHeaders=${v2.formattedSignedParams.listed}',
      'Signature=${v2.signature}',
    ].join(',');

    return AwsS3Request(
      uri,
      {
        'Authorization': authorization,
        'x-amz-content-sha256': v2.payload,
        'x-amz-date': v2.datetime,
        if (signedParams != null) ...signedParams,
      },
    );
  }
}

class AwsS3Request {
  final Uri uri;
  final Map<String, String> headers;

  const AwsS3Request(this.uri, this.headers);
}
