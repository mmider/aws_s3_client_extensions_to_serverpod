import 'dart:convert';

import 'package:aws_s3_client_extensions_to_serverpod/src/aws_s3_request_builder.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/classes/copy_object_result/copy_object_result.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/classes/list_bucket_result/list_bucket_result.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/exceptions.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/utils.dart';
import 'package:http/http.dart';
import 'package:serverpod/serverpod.dart';
import 'package:xml2json/xml2json.dart';

/// Extends functionality of the `Serverpod`s [S3CloudStorage] as implemented by [AwsS3Client].
///
/// To use it, simply initialize it as a global variable in your server. See
/// also README.md
class AwsS3ClientExtension {
  final Client _client;
  final AwsS3RequestBuilder _awsS3RequestBuilder;
  final Map<String, String> buckets;

  AwsS3ClientExtension({
    required Serverpod serverpod,
    required String region,
    required this.buckets,
    String? sessionToken,
    Client? client,
  })  : assert(
          serverpod.getPassword('AWSAccessKeyId') != null,
          'AWSAccessKeyId must be present in your password.yaml file',
        ),
        assert(
          serverpod.getPassword('AWSSecretKey') != null,
          'AWSSecretKey must be present in your password.yaml file',
        ),
        _client = client ?? Client(),
        _awsS3RequestBuilder = AwsS3RequestBuilder(
          secretKey: serverpod.getPassword('AWSSecretKey')!,
          accessKey: serverpod.getPassword('AWSAccessKeyId')!,
          host: "s3.$region.amazonaws.com",
          region: region,
          sessionToken: sessionToken,
        );

  /// Copy object under [sourceBucket]/[sourcePath] into [destinationBucket]/[destinationPath]
  ///
  /// When [makePublic] == `true` then public URLs to copied object can be created
  /// See also https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html#AmazonS3-CopyObject
  Future<CopyObjectResult?> copyObject({
    required String destinationPath,
    required String destinationBucket,
    required String sourcePath,
    required String sourceBucket,
    bool makePublic = false,
  }) async {
    final request = _awsS3RequestBuilder.buildRequest(
      key: "$destinationBucket/$destinationPath",
      method: "PUT",
      signedParams: {
        "x-amz-copy-source": encodeUri("$sourceBucket/$sourcePath"),
        "x-amz-acl": makePublic ? 'public-read' : 'private',
      },
    );

    final response = await _client.put(request.uri, headers: request.headers);
    _checkResponseError(response);
    return CopyObjectResult.fromJsonParker(_parseS3Response(response.body));
  }

  /// List objects in an S3 bucket
  ///
  /// See also https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html#API_ListObjectsV2
  Future<ListBucketResult?> listObjects({
    /// Id of the bucket containing objects (usually either `this.buckets['private']` or `this.buckets['public']`)
    required String bucketId,

    /// Respond only with keys that begin with the specified prefix
    String? prefix,

    /// Delimiter used for grouping common prefixes
    String? delimiter,

    /// Maximum number of keys returned in the response (defaults to 1000)
    int? maxKeys,
  }) async {
    final request = _awsS3RequestBuilder.buildRequest(
      key: bucketId,
      method: "GET",
      queryParams: {
        "list-type": "2",
        if (prefix != null) "prefix": prefix,
        if (delimiter != null) "delimiter": delimiter,
        if (maxKeys != null) "maxKeys": maxKeys.toString(),
      },
    );
    final response = await _client.get(request.uri, headers: request.headers);
    _checkResponseError(response);
    return ListBucketResult.fromJsonParker(_parseS3Response(response.body));
  }
}

Map<String, dynamic> _parseS3Response(String responseXml) {
  final Xml2Json myTransformer = Xml2Json();
  myTransformer.parse(responseXml);
  return json.decode(myTransformer.toParker());
}

void _checkResponseError(Response response) {
  if (response.statusCode >= 200 && response.statusCode <= 300) {
    return;
  }
  switch (response.statusCode) {
    case 403:
      throw NoPermissionsException(response);
    default:
      throw S3Exception(response);
  }
}
