class FormattedSignedParams {
  late final String listed;
  late final String mapped;

  FormattedSignedParams(
    Map<String, String>? signedParams, {
    required String host,
    String? payload,
    String? datetime,
    required String? sessionToken,
  }) {
    final lowercasedSignedParams = signedParams?.map(
      (key, value) => MapEntry(key.toLowerCase(), value.trim()),
    );
    // let's add signed parameters that must always be present
    Map<String, String> allSignedParams = {
      'host': host,
      if (payload != null) 'x-amz-content-sha256': payload,
      if (datetime != null) 'x-amz-date': datetime,
      if (sessionToken != null) 'x-amz-security-token': sessionToken,
      // 'x-amz-security-token': sessionToken ?? "",
      if (lowercasedSignedParams != null) ...lowercasedSignedParams,
    };

    final keys = allSignedParams.keys.toList()..sort();
    mapped = keys.map((p) => '$p:${allSignedParams[p]}').join('\n');
    listed = keys.join(';');
  }
}
