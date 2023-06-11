import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/utils/build_canonical_request.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/utils/formatted_signed_params.dart';

class AwsS3RequestPreparatoryVariables {
  final String credentialScope;
  final String datetime;
  final String payload;
  final List<int> signingKey;
  final FormattedSignedParams formattedSignedParams;

  const AwsS3RequestPreparatoryVariables({
    required this.credentialScope,
    required this.datetime,
    required this.payload,
    required this.signingKey,
    required this.formattedSignedParams,
  });

  factory AwsS3RequestPreparatoryVariables.compute({
    required String host,
    required String region,
    required String secretKey,
    required String service,
    required Map<String, String>? signedParams,
    String? sessionToken,
    bool unsignedPayload = false,
  }) {
    final payload =
        unsignedPayload ? "UNSIGNED-PAYLOAD" : SigV4.hashCanonicalRequest('');
    final datetime = SigV4.generateDatetime();
    final credentialScope = SigV4.buildCredentialScope(
      datetime,
      region,
      service,
    );

    final formattedSignedParams = FormattedSignedParams(
      signedParams,
      host: host,
      payload: unsignedPayload ? null : payload,
      datetime: unsignedPayload ? null : datetime,
      sessionToken: sessionToken,
    );

    final signingKey = SigV4.calculateSigningKey(
      secretKey,
      datetime,
      region,
      service,
    );

    return AwsS3RequestPreparatoryVariables(
      credentialScope: credentialScope,
      datetime: datetime,
      payload: payload,
      signingKey: signingKey,
      formattedSignedParams: formattedSignedParams,
    );
  }
}

class AwsS3RequestVariables {
  final String signature;
  final String credentialScope;
  final String datetime;
  final String payload;
  final FormattedSignedParams formattedSignedParams;

  const AwsS3RequestVariables({
    required this.signature,
    required this.credentialScope,
    required this.datetime,
    required this.payload,
    required this.formattedSignedParams,
  });

  factory AwsS3RequestVariables.compute(
    AwsS3RequestPreparatoryVariables v, {
    String method = "GET",
    required String key,
    required Map<String, String>? queryParams,
  }) {
    final canonicalQuery = SigV4.buildCanonicalQueryString(queryParams);

    final canonicalRequest = buildCanonicalRequest(
      method: method,
      key: key,
      canonicalQuery: canonicalQuery,
      payload: v.payload,
      signedParams: v.formattedSignedParams,
    );

    final signature = SigV4.calculateSignature(
      v.signingKey,
      SigV4.buildStringToSign(
        v.datetime,
        v.credentialScope,
        SigV4.hashCanonicalRequest(canonicalRequest),
      ),
    );
    return AwsS3RequestVariables(
      signature: signature,
      credentialScope: v.credentialScope,
      datetime: v.datetime,
      payload: v.payload,
      formattedSignedParams: v.formattedSignedParams,
    );
  }
}

// class AwsS3RequestVariables {
//   final String signature;
//   final String credentialScope;
//   final String datetime;
//   final String payload;
//   final FormattedSignedParams formattedSignedParams;

//   const AwsS3RequestVariables({
//     required this.signature,
//     required this.credentialScope,
//     required this.datetime,
//     required this.payload,
//     required this.formattedSignedParams,
//   });

//   factory AwsS3RequestVariables.compute({
//     String method = "GET",
//     required String host,
//     required String region,
//     required String service,
//     required String key,
//     required Map<String, String>? queryParams,
//     required Map<String, String>? signedParams,
//     String? sessionToken,
//     required String secretKey,
//     bool unsignedPayload = false,
//   }) {
//     final payload =
//         unsignedPayload ? "UNSIGNED-PAYLOAD" : SigV4.hashCanonicalRequest('');
//     final datetime = SigV4.generateDatetime();
//     final credentialScope = SigV4.buildCredentialScope(
//       datetime,
//       region,
//       service,
//     );

//     final canonicalQuery = SigV4.buildCanonicalQueryString(queryParams);
//     final formattedSignedParams = FormattedSignedParams(
//       signedParams,
//       host: host,
//       payload: unsignedPayload ? null : payload,
//       datetime: datetime,
//       sessionToken: sessionToken,
//     );
//     final canonicalRequest = buildCanonicalRequest(
//       method: method,
//       key: key,
//       canonicalQuery: canonicalQuery,
//       payload: payload,
//       signedParams: formattedSignedParams,
//     );

//     final signature = SigV4.calculateSignature(
//       SigV4.calculateSigningKey(
//         secretKey,
//         datetime,
//         region,
//         service,
//       ),
//       SigV4.buildStringToSign(
//         datetime,
//         credentialScope,
//         SigV4.hashCanonicalRequest(canonicalRequest),
//       ),
//     );
//     return AwsS3RequestVariables(
//       signature: signature,
//       credentialScope: credentialScope,
//       datetime: datetime,
//       payload: payload,
//       formattedSignedParams: formattedSignedParams,
//     );
//   }
// }
