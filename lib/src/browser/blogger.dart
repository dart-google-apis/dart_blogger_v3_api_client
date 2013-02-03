part of blogger_v3_api_browser;

/** Client to access the blogger v3 API */
/** API for access to the data within Blogger. */
class Blogger extends BrowserClient {

  BlogsResource _blogs;
  BlogsResource get blogs => _blogs;
  CommentsResource _comments;
  CommentsResource get comments => _comments;
  PagesResource _pages;
  PagesResource get pages => _pages;
  PostsResource _posts;
  PostsResource get posts => _posts;
  UsersResource _users;
  UsersResource get users => _users;

  /** OAuth Scope2: Manage your Blogger account */
  static const String BLOGGER_SCOPE = "https://www.googleapis.com/auth/blogger";

  /** OAuth Scope2: View your Blogger account */
  static const String BLOGGER_READONLY_SCOPE = "https://www.googleapis.com/auth/blogger.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Blogger([OAuth2 auth]) : super(auth) {
    basePath = "/blogger/v3/";
    rootUrl = "https://www.googleapis.com:443/";
    _blogs = new BlogsResource(this);
    _comments = new CommentsResource(this);
    _pages = new PagesResource(this);
    _posts = new PostsResource(this);
    _users = new UsersResource(this);
  }
}
