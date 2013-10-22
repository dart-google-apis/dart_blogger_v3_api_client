library blogger_v3_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_blogger_v3_api/src/console_client.dart';

import "package:google_blogger_v3_api/blogger_v3_api_client.dart";

/** API for access to the data within Blogger. */
class Blogger extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your Blogger account */
  static const String BLOGGER_SCOPE = "https://www.googleapis.com/auth/blogger";

  /** OAuth Scope2: View your Blogger account */
  static const String BLOGGER_READONLY_SCOPE = "https://www.googleapis.com/auth/blogger.readonly";

  final oauth2.OAuth2Console auth;

  Blogger([oauth2.OAuth2Console this.auth]);
}
