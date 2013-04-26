part of blogger_v3_api_console;

/** Client to access the blogger v3 API */
/** API for access to the data within Blogger. */
class Blogger extends ConsoleClient {

  BlogsResource_ _blogs;
  BlogsResource_ get blogs => _blogs;
  CommentsResource_ _comments;
  CommentsResource_ get comments => _comments;
  PagesResource_ _pages;
  PagesResource_ get pages => _pages;
  PostsResource_ _posts;
  PostsResource_ get posts => _posts;
  UsersResource_ _users;
  UsersResource_ get users => _users;

  /** OAuth Scope2: Manage your Blogger account */
  static const core.String BLOGGER_SCOPE = "https://www.googleapis.com/auth/blogger";

  /** OAuth Scope2: View your Blogger account */
  static const core.String BLOGGER_READONLY_SCOPE = "https://www.googleapis.com/auth/blogger.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Blogger([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/blogger/v3/";
    rootUrl = "https://www.googleapis.com:443/";
    _blogs = new BlogsResource_(this);
    _comments = new CommentsResource_(this);
    _pages = new PagesResource_(this);
    _posts = new PostsResource_(this);
    _users = new UsersResource_(this);
  }
}
