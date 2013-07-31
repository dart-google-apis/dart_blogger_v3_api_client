library blogger_v3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_blogger_v3_api/src/cloud_api_browser.dart';
import "package:google_blogger_v3_api/blogger_v3_api_client.dart";

/** API for access to the data within Blogger. */
class Blogger extends Client with BrowserClient {

  /** OAuth Scope2: Manage your Blogger account */
  static const String BLOGGER_SCOPE = "https://www.googleapis.com/auth/blogger";

  /** OAuth Scope2: View your Blogger account */
  static const String BLOGGER_READONLY_SCOPE = "https://www.googleapis.com/auth/blogger.readonly";

  final oauth.OAuth2 auth;

  Blogger([oauth.OAuth2 this.auth]);
}
