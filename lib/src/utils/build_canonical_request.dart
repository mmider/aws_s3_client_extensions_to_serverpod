import 'package:aws_s3_client_extensions_to_serverpod/src/utils/encode_uri.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/utils/formatted_signed_params.dart';

/// see https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html

String buildCanonicalRequest({
  required String method,
  required String key,
  required String canonicalQuery,
  required String payload,
  required FormattedSignedParams signedParams,
}) {
  final canonicalRequest = '''$method
${encodeUri('/$key')}
$canonicalQuery
${signedParams.mapped}

${signedParams.listed}
$payload''';
  print("Canonical request:");
  print(canonicalRequest);
  return canonicalRequest;
}
