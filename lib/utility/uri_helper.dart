String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

Uri createEmailUri(String name, String email, String link) {
  return Uri(
    scheme: 'mailto',
    path: 'support@rangde.in',
    query: encodeQueryParameters(<String, String>{
      'subject': 'Delete my Account',
      'body':
          "Hello! My name is $name. I'd like to request my Rang De account to be deleted at the earliest. My email address is $email. I confirm that I've read and understand Rang De's policy regarding account deletion.\nlink: $link",
    }),
  );
}
