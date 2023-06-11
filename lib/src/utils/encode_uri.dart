String encodeUri(String path) =>
    path.split('/').map(Uri.encodeComponent).join('/');
