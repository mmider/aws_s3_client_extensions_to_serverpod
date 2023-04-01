import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/utils.dart';

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

  AwsS3Request buildRequest({
    required String key,
    String method = "GET",
    Map<String, String>? queryParams,
    Map<String, String>? signedParams,
  }) {
    final uri = Uri.https(_host, key, queryParams);
    final payload = SigV4.hashCanonicalRequest('');
    final datetime = SigV4.generateDatetime();
    final credentialScope = SigV4.buildCredentialScope(
      datetime,
      _region,
      _service,
    );

    final canonicalQuery = SigV4.buildCanonicalQueryString(queryParams);
    final formattedSignedParams = FormattedSignedParams(
      signedParams,
      host: _host,
      payload: payload,
      datetime: datetime,
      sessionToken: _sessionToken,
    );
    final canonicalRequest = _buildCanonicalRequest(
      method: method,
      key: key,
      canonicalQuery: canonicalQuery,
      payload: payload,
      signedParams: formattedSignedParams,
    );

    final signature = SigV4.calculateSignature(
      SigV4.calculateSigningKey(
        _secretKey,
        datetime,
        _region,
        _service,
      ),
      SigV4.buildStringToSign(
        datetime,
        credentialScope,
        SigV4.hashCanonicalRequest(canonicalRequest),
      ),
    );

    final authorization = [
      'AWS4-HMAC-SHA256 Credential=$_accessKey/$credentialScope',
      'SignedHeaders=${formattedSignedParams.listed}',
      'Signature=$signature',
    ].join(',');

    return AwsS3Request(
      uri,
      {
        'Authorization': authorization,
        'x-amz-content-sha256': payload,
        'x-amz-date': datetime,
        if (signedParams != null) ...signedParams,
      },
    );
  }

  String _buildCanonicalRequest({
    required String method,
    required String key,
    required String canonicalQuery,
    required String payload,
    required FormattedSignedParams signedParams,
  }) {
    return '''$method
${encodeUri('/$key')}
$canonicalQuery
${signedParams.mapped}

${signedParams.listed}
$payload''';
  }
}

class AwsS3Request {
  final Uri uri;
  final Map<String, String> headers;

  const AwsS3Request(this.uri, this.headers);
}

class FormattedSignedParams {
  late final String listed;
  late final String mapped;

  FormattedSignedParams(
    Map<String, String>? signedParams, {
    required String host,
    required String payload,
    required String datetime,
    required String? sessionToken,
  }) {
    final allSignedParams =
        Map<String, String>.from(signedParams ?? <String, String>{});
    // let's add signed parameters that must always be present
    allSignedParams['host'] = host;
    allSignedParams['x-amz-content-sha256'] = payload;
    allSignedParams['x-amz-date'] = datetime;
    allSignedParams['x-amz-security-token'] = sessionToken ?? "";

    final keys = allSignedParams.keys.toList()..sort();
    mapped = keys.map((p) => '$p:${allSignedParams[p]}').join('\n');
    listed = keys.join(';');
  }
}
