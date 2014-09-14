part of blogger_v3_api;

class BlogUserInfosResource_ {

  final Client _client;

  BlogUserInfosResource_(Client client) :
      _client = client;

  /**
   * Gets one blog and user info pair by blogId and userId.
   *
   * [userId] - ID of the user whose blogs are to be fetched. Either the word 'self' (sans quote marks) or the user's profile identifier.
   *
   * [blogId] - The ID of the blog to get.
   *
   * [maxPosts] - Maximum number of posts to pull back with the blog.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BlogUserInfo> get(core.String userId, core.String blogId, {core.int maxPosts, core.Map optParams}) {
    var url = "users/{userId}/blogs/{blogId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (maxPosts != null) queryParams["maxPosts"] = maxPosts;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BlogUserInfo.fromJson(data));
  }
}

class BlogsResource_ {

  final Client _client;

  BlogsResource_(Client client) :
      _client = client;

  /**
   * Gets one blog by ID.
   *
   * [blogId] - The ID of the blog to get.
   *
   * [maxPosts] - Maximum number of posts to pull back with the blog.
   *
   * [view] - Access level with which to view the blog. Note that some fields require elevated access.
   *   Allowed values:
   *     ADMIN - Admin level detail.
   *     AUTHOR - Author level detail.
   *     READER - Reader level detail.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Blog> get(core.String blogId, {core.int maxPosts, core.String view, core.Map optParams}) {
    var url = "blogs/{blogId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (maxPosts != null) queryParams["maxPosts"] = maxPosts;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Blog.fromJson(data));
  }

  /**
   * Retrieve a Blog by URL.
   *
   * [url] - The URL of the blog to retrieve.
   *
   * [view] - Access level with which to view the blog. Note that some fields require elevated access.
   *   Allowed values:
   *     ADMIN - Admin level detail.
   *     AUTHOR - Author level detail.
   *     READER - Reader level detail.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Blog> getByUrl(core.String url, {core.String view, core.Map optParams}) {
    var url = "blogs/byurl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (url == null) paramErrors.add("url is required");
    if (url != null) queryParams["url"] = url;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Blog.fromJson(data));
  }

  /**
   * Retrieves a list of blogs, possibly filtered.
   *
   * [userId] - ID of the user whose blogs are to be fetched. Either the word 'self' (sans quote marks) or the user's profile identifier.
   *
   * [fetchUserInfo] - Whether the response is a list of blogs with per-user information instead of just blogs.
   *
   * [role] - User access types for blogs to include in the results, e.g. AUTHOR will return blogs where the user has author level access. If no roles are specified, defaults to ADMIN and AUTHOR roles.
   *   Repeated values: allowed
   *   Allowed values:
   *     ADMIN - Admin role - Blogs where the user has Admin level access.
   *     AUTHOR - Author role - Blogs where the user has Author level access.
   *     READER - Reader role - Blogs where the user has Reader level access (to a private blog).
   *
   * [status] - Blog statuses to include in the result (default: Live blogs only). Note that ADMIN access is required to view deleted blogs.
   *   Default: LIVE
   *   Repeated values: allowed
   *   Allowed values:
   *     DELETED - Blog has been deleted by an administrator.
   *     LIVE - Blog is currently live.
   *
   * [view] - Access level with which to view the blogs. Note that some fields require elevated access.
   *   Allowed values:
   *     ADMIN - Admin level detail.
   *     AUTHOR - Author level detail.
   *     READER - Reader level detail.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BlogList> listByUser(core.String userId, {core.bool fetchUserInfo, core.List<core.String> role, core.List<core.String> status, core.String view, core.Map optParams}) {
    var url = "users/{userId}/blogs";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (fetchUserInfo != null) queryParams["fetchUserInfo"] = fetchUserInfo;
    if (role != null && !["ADMIN", "AUTHOR", "READER"].contains(role)) {
      paramErrors.add("Allowed values for role: ADMIN, AUTHOR, READER");
    }
    if (role != null) queryParams["role"] = role;
    if (status != null && !["DELETED", "LIVE"].contains(status)) {
      paramErrors.add("Allowed values for status: DELETED, LIVE");
    }
    if (status != null) queryParams["status"] = status;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BlogList.fromJson(data));
  }
}

class CommentsResource_ {

  final Client _client;

  CommentsResource_(Client client) :
      _client = client;

  /**
   * Marks a comment as not spam.
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [commentId] - The ID of the comment to mark as not spam.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Comment> approve(core.String blogId, core.String postId, core.String commentId, {core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}/comments/{commentId}/approve";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Comment.fromJson(data));
  }

  /**
   * Delete a comment by ID.
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [commentId] - The ID of the comment to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String blogId, core.String postId, core.String commentId, {core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}/comments/{commentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets one comment by ID.
   *
   * [blogId] - ID of the blog to containing the comment.
   *
   * [postId] - ID of the post to fetch posts from.
   *
   * [commentId] - The ID of the comment to get.
   *
   * [view] - Access level for the requested comment (default: READER). Note that some comments will require elevated permissions, for example comments where the parent posts which is in a draft state, or comments that are pending moderation.
   *   Allowed values:
   *     ADMIN - Admin level detail
   *     AUTHOR - Author level detail
   *     READER - Admin level detail
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Comment> get(core.String blogId, core.String postId, core.String commentId, {core.String view, core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}/comments/{commentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Comment.fromJson(data));
  }

  /**
   * Retrieves the comments for a post, possibly filtered.
   *
   * [blogId] - ID of the blog to fetch comments from.
   *
   * [postId] - ID of the post to fetch posts from.
   *
   * [endDate] - Latest date of comment to fetch, a date-time with RFC 3339 formatting.
   *
   * [fetchBodies] - Whether the body content of the comments is included.
   *
   * [maxResults] - Maximum number of comments to include in the result.
   *
   * [pageToken] - Continuation token if request is paged.
   *
   * [startDate] - Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
   *
   * [status]
   *   Repeated values: allowed
   *   Allowed values:
   *     emptied - Comments that have had their content removed
   *     live - Comments that are publicly visible
   *     pending - Comments that are awaiting administrator approval
   *     spam - Comments marked as spam by the administrator
   *
   * [view] - Access level with which to view the returned result. Note that some fields require elevated access.
   *   Allowed values:
   *     ADMIN - Admin level detail
   *     AUTHOR - Author level detail
   *     READER - Reader level detail
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CommentList> list(core.String blogId, core.String postId, {core.String endDate, core.bool fetchBodies, core.int maxResults, core.String pageToken, core.String startDate, core.List<core.String> status, core.String view, core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}/comments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (endDate != null) queryParams["endDate"] = endDate;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (startDate != null) queryParams["startDate"] = startDate;
    if (status != null && !["emptied", "live", "pending", "spam"].contains(status)) {
      paramErrors.add("Allowed values for status: emptied, live, pending, spam");
    }
    if (status != null) queryParams["status"] = status;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CommentList.fromJson(data));
  }

  /**
   * Retrieves the comments for a blog, across all posts, possibly filtered.
   *
   * [blogId] - ID of the blog to fetch comments from.
   *
   * [endDate] - Latest date of comment to fetch, a date-time with RFC 3339 formatting.
   *
   * [fetchBodies] - Whether the body content of the comments is included.
   *
   * [maxResults] - Maximum number of comments to include in the result.
   *
   * [pageToken] - Continuation token if request is paged.
   *
   * [startDate] - Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CommentList> listByBlog(core.String blogId, {core.String endDate, core.bool fetchBodies, core.int maxResults, core.String pageToken, core.String startDate, core.Map optParams}) {
    var url = "blogs/{blogId}/comments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (endDate != null) queryParams["endDate"] = endDate;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (startDate != null) queryParams["startDate"] = startDate;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CommentList.fromJson(data));
  }

  /**
   * Marks a comment as spam.
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [commentId] - The ID of the comment to mark as spam.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Comment> markAsSpam(core.String blogId, core.String postId, core.String commentId, {core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}/comments/{commentId}/spam";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Comment.fromJson(data));
  }

  /**
   * Removes the content of a comment.
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [commentId] - The ID of the comment to delete content from.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Comment> removeContent(core.String blogId, core.String postId, core.String commentId, {core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}/comments/{commentId}/removecontent";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Comment.fromJson(data));
  }
}

class PageViewsResource_ {

  final Client _client;

  PageViewsResource_(Client client) :
      _client = client;

  /**
   * Retrieve pageview stats for a Blog.
   *
   * [blogId] - The ID of the blog to get.
   *
   * [range]
   *   Repeated values: allowed
   *   Allowed values:
   *     30DAYS - Page view counts from the last thirty days.
   *     7DAYS - Page view counts from the last seven days.
   *     all - Total page view counts from all time.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Pageviews> get(core.String blogId, {core.List<core.String> range, core.Map optParams}) {
    var url = "blogs/{blogId}/pageviews";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (range != null && !["30DAYS", "7DAYS", "all"].contains(range)) {
      paramErrors.add("Allowed values for range: 30DAYS, 7DAYS, all");
    }
    if (range != null) queryParams["range"] = range;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Pageviews.fromJson(data));
  }
}

class PagesResource_ {

  final Client _client;

  PagesResource_(Client client) :
      _client = client;

  /**
   * Delete a page by ID.
   *
   * [blogId] - The ID of the Blog.
   *
   * [pageId] - The ID of the Page.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String blogId, core.String pageId, {core.Map optParams}) {
    var url = "blogs/{blogId}/pages/{pageId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (pageId == null) paramErrors.add("pageId is required");
    if (pageId != null) urlParams["pageId"] = pageId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets one blog page by ID.
   *
   * [blogId] - ID of the blog containing the page.
   *
   * [pageId] - The ID of the page to get.
   *
   * [view]
   *   Allowed values:
   *     ADMIN - Admin level detail
   *     AUTHOR - Author level detail
   *     READER - Reader level detail
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Page> get(core.String blogId, core.String pageId, {core.String view, core.Map optParams}) {
    var url = "blogs/{blogId}/pages/{pageId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (pageId == null) paramErrors.add("pageId is required");
    if (pageId != null) urlParams["pageId"] = pageId;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Page.fromJson(data));
  }

  /**
   * Add a page.
   *
   * [request] - Page to send in this request
   *
   * [blogId] - ID of the blog to add the page to.
   *
   * [isDraft] - Whether to create the page as a draft (default: false).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Page> insert(Page request, core.String blogId, {core.bool isDraft, core.Map optParams}) {
    var url = "blogs/{blogId}/pages";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (isDraft != null) queryParams["isDraft"] = isDraft;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Page.fromJson(data));
  }

  /**
   * Retrieves the pages for a blog, optionally including non-LIVE statuses.
   *
   * [blogId] - ID of the blog to fetch pages from.
   *
   * [fetchBodies] - Whether to retrieve the Page bodies.
   *
   * [status]
   *   Repeated values: allowed
   *   Allowed values:
   *     draft - Draft (unpublished) Pages
   *     live - Pages that are publicly visible
   *
   * [view] - Access level with which to view the returned result. Note that some fields require elevated access.
   *   Allowed values:
   *     ADMIN - Admin level detail
   *     AUTHOR - Author level detail
   *     READER - Reader level detail
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PageList> list(core.String blogId, {core.bool fetchBodies, core.List<core.String> status, core.String view, core.Map optParams}) {
    var url = "blogs/{blogId}/pages";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (status != null && !["draft", "live"].contains(status)) {
      paramErrors.add("Allowed values for status: draft, live");
    }
    if (status != null) queryParams["status"] = status;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PageList.fromJson(data));
  }

  /**
   * Update a page. This method supports patch semantics.
   *
   * [request] - Page to send in this request
   *
   * [blogId] - The ID of the Blog.
   *
   * [pageId] - The ID of the Page.
   *
   * [publish] - Whether a publish action should be performed when the page is updated (default: false).
   *
   * [revert] - Whether a revert action should be performed when the page is updated (default: false).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Page> patch(Page request, core.String blogId, core.String pageId, {core.bool publish, core.bool revert, core.Map optParams}) {
    var url = "blogs/{blogId}/pages/{pageId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (pageId == null) paramErrors.add("pageId is required");
    if (pageId != null) urlParams["pageId"] = pageId;
    if (publish != null) queryParams["publish"] = publish;
    if (revert != null) queryParams["revert"] = revert;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Page.fromJson(data));
  }

  /**
   * Publishes a draft page.
   *
   * [blogId] - The ID of the blog.
   *
   * [pageId] - The ID of the page.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Page> publish(core.String blogId, core.String pageId, {core.Map optParams}) {
    var url = "blogs/{blogId}/pages/{pageId}/publish";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (pageId == null) paramErrors.add("pageId is required");
    if (pageId != null) urlParams["pageId"] = pageId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Page.fromJson(data));
  }

  /**
   * Revert a published or scheduled page to draft state.
   *
   * [blogId] - The ID of the blog.
   *
   * [pageId] - The ID of the page.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Page> revert(core.String blogId, core.String pageId, {core.Map optParams}) {
    var url = "blogs/{blogId}/pages/{pageId}/revert";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (pageId == null) paramErrors.add("pageId is required");
    if (pageId != null) urlParams["pageId"] = pageId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Page.fromJson(data));
  }

  /**
   * Update a page.
   *
   * [request] - Page to send in this request
   *
   * [blogId] - The ID of the Blog.
   *
   * [pageId] - The ID of the Page.
   *
   * [publish] - Whether a publish action should be performed when the page is updated (default: false).
   *
   * [revert] - Whether a revert action should be performed when the page is updated (default: false).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Page> update(Page request, core.String blogId, core.String pageId, {core.bool publish, core.bool revert, core.Map optParams}) {
    var url = "blogs/{blogId}/pages/{pageId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (pageId == null) paramErrors.add("pageId is required");
    if (pageId != null) urlParams["pageId"] = pageId;
    if (publish != null) queryParams["publish"] = publish;
    if (revert != null) queryParams["revert"] = revert;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Page.fromJson(data));
  }
}

class PostUserInfosResource_ {

  final Client _client;

  PostUserInfosResource_(Client client) :
      _client = client;

  /**
   * Gets one post and user info pair, by post ID and user ID. The post user info contains per-user information about the post, such as access rights, specific to the user.
   *
   * [userId] - ID of the user for the per-user information to be fetched. Either the word 'self' (sans quote marks) or the user's profile identifier.
   *
   * [blogId] - The ID of the blog.
   *
   * [postId] - The ID of the post to get.
   *
   * [maxComments] - Maximum number of comments to pull back on a post.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PostUserInfo> get(core.String userId, core.String blogId, core.String postId, {core.int maxComments, core.Map optParams}) {
    var url = "users/{userId}/blogs/{blogId}/posts/{postId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (maxComments != null) queryParams["maxComments"] = maxComments;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PostUserInfo.fromJson(data));
  }

  /**
   * Retrieves a list of post and post user info pairs, possibly filtered. The post user info contains per-user information about the post, such as access rights, specific to the user.
   *
   * [userId] - ID of the user for the per-user information to be fetched. Either the word 'self' (sans quote marks) or the user's profile identifier.
   *
   * [blogId] - ID of the blog to fetch posts from.
   *
   * [endDate] - Latest post date to fetch, a date-time with RFC 3339 formatting.
   *
   * [fetchBodies] - Whether the body content of posts is included. Default is false.
   *   Default: false
   *
   * [labels] - Comma-separated list of labels to search for.
   *
   * [maxResults] - Maximum number of posts to fetch.
   *
   * [orderBy] - Sort order applied to search results. Default is published.
   *   Default: PUBLISHED
   *   Allowed values:
   *     published - Order by the date the post was published
   *     updated - Order by the date the post was last updated
   *
   * [pageToken] - Continuation token if the request is paged.
   *
   * [startDate] - Earliest post date to fetch, a date-time with RFC 3339 formatting.
   *
   * [status]
   *   Repeated values: allowed
   *   Allowed values:
   *     draft - Draft posts
   *     live - Published posts
   *     scheduled - Posts that are scheduled to publish in future.
   *
   * [view] - Access level with which to view the returned result. Note that some fields require elevated access.
   *   Allowed values:
   *     ADMIN - Admin level detail
   *     AUTHOR - Author level detail
   *     READER - Reader level detail
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PostUserInfosList> list(core.String userId, core.String blogId, {core.String endDate, core.bool fetchBodies, core.String labels, core.int maxResults, core.String orderBy, core.String pageToken, core.String startDate, core.List<core.String> status, core.String view, core.Map optParams}) {
    var url = "users/{userId}/blogs/{blogId}/posts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (endDate != null) queryParams["endDate"] = endDate;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (labels != null) queryParams["labels"] = labels;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["published", "updated"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: published, updated");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (startDate != null) queryParams["startDate"] = startDate;
    if (status != null && !["draft", "live", "scheduled"].contains(status)) {
      paramErrors.add("Allowed values for status: draft, live, scheduled");
    }
    if (status != null) queryParams["status"] = status;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PostUserInfosList.fromJson(data));
  }
}

class PostsResource_ {

  final Client _client;

  PostsResource_(Client client) :
      _client = client;

  /**
   * Delete a post by ID.
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String blogId, core.String postId, {core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Get a post by ID.
   *
   * [blogId] - ID of the blog to fetch the post from.
   *
   * [postId] - The ID of the post
   *
   * [fetchBody] - Whether the body content of the post is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
   *   Default: true
   *
   * [fetchImages] - Whether image URL metadata for each post is included (default: false).
   *
   * [maxComments] - Maximum number of comments to pull back on a post.
   *
   * [view] - Access level with which to view the returned result. Note that some fields require elevated access.
   *   Allowed values:
   *     ADMIN - Admin level detail
   *     AUTHOR - Author level detail
   *     READER - Reader level detail
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> get(core.String blogId, core.String postId, {core.bool fetchBody, core.bool fetchImages, core.int maxComments, core.String view, core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBody != null) queryParams["fetchBody"] = fetchBody;
    if (fetchImages != null) queryParams["fetchImages"] = fetchImages;
    if (maxComments != null) queryParams["maxComments"] = maxComments;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Post.fromJson(data));
  }

  /**
   * Retrieve a Post by Path.
   *
   * [blogId] - ID of the blog to fetch the post from.
   *
   * [path] - Path of the Post to retrieve.
   *
   * [maxComments] - Maximum number of comments to pull back on a post.
   *
   * [view] - Access level with which to view the returned result. Note that some fields require elevated access.
   *   Allowed values:
   *     ADMIN - Admin level detail
   *     AUTHOR - Author level detail
   *     READER - Reader level detail
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> getByPath(core.String blogId, core.String path, {core.int maxComments, core.String view, core.Map optParams}) {
    var url = "blogs/{blogId}/posts/bypath";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (maxComments != null) queryParams["maxComments"] = maxComments;
    if (path == null) paramErrors.add("path is required");
    if (path != null) queryParams["path"] = path;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Post.fromJson(data));
  }

  /**
   * Add a post.
   *
   * [request] - Post to send in this request
   *
   * [blogId] - ID of the blog to add the post to.
   *
   * [fetchBody] - Whether the body content of the post is included with the result (default: true).
   *   Default: true
   *
   * [fetchImages] - Whether image URL metadata for each post is included in the returned result (default: false).
   *
   * [isDraft] - Whether to create the post as a draft (default: false).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> insert(Post request, core.String blogId, {core.bool fetchBody, core.bool fetchImages, core.bool isDraft, core.Map optParams}) {
    var url = "blogs/{blogId}/posts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBody != null) queryParams["fetchBody"] = fetchBody;
    if (fetchImages != null) queryParams["fetchImages"] = fetchImages;
    if (isDraft != null) queryParams["isDraft"] = isDraft;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Post.fromJson(data));
  }

  /**
   * Retrieves a list of posts, possibly filtered.
   *
   * [blogId] - ID of the blog to fetch posts from.
   *
   * [endDate] - Latest post date to fetch, a date-time with RFC 3339 formatting.
   *
   * [fetchBodies] - Whether the body content of posts is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
   *   Default: true
   *
   * [fetchImages] - Whether image URL metadata for each post is included.
   *
   * [labels] - Comma-separated list of labels to search for.
   *
   * [maxResults] - Maximum number of posts to fetch.
   *
   * [orderBy] - Sort search results
   *   Default: PUBLISHED
   *   Allowed values:
   *     published - Order by the date the post was published
   *     updated - Order by the date the post was last updated
   *
   * [pageToken] - Continuation token if the request is paged.
   *
   * [startDate] - Earliest post date to fetch, a date-time with RFC 3339 formatting.
   *
   * [status] - Statuses to include in the results.
   *   Repeated values: allowed
   *   Allowed values:
   *     draft - Draft (non-published) posts.
   *     live - Published posts
   *     scheduled - Posts that are scheduled to publish in the future.
   *
   * [view] - Access level with which to view the returned result. Note that some fields require escalated access.
   *   Allowed values:
   *     ADMIN - Admin level detail
   *     AUTHOR - Author level detail
   *     READER - Reader level detail
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PostList> list(core.String blogId, {core.String endDate, core.bool fetchBodies, core.bool fetchImages, core.String labels, core.int maxResults, core.String orderBy, core.String pageToken, core.String startDate, core.List<core.String> status, core.String view, core.Map optParams}) {
    var url = "blogs/{blogId}/posts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (endDate != null) queryParams["endDate"] = endDate;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (fetchImages != null) queryParams["fetchImages"] = fetchImages;
    if (labels != null) queryParams["labels"] = labels;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["published", "updated"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: published, updated");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (startDate != null) queryParams["startDate"] = startDate;
    if (status != null && !["draft", "live", "scheduled"].contains(status)) {
      paramErrors.add("Allowed values for status: draft, live, scheduled");
    }
    if (status != null) queryParams["status"] = status;
    if (view != null && !["ADMIN", "AUTHOR", "READER"].contains(view)) {
      paramErrors.add("Allowed values for view: ADMIN, AUTHOR, READER");
    }
    if (view != null) queryParams["view"] = view;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PostList.fromJson(data));
  }

  /**
   * Update a post. This method supports patch semantics.
   *
   * [request] - Post to send in this request
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [fetchBody] - Whether the body content of the post is included with the result (default: true).
   *   Default: true
   *
   * [fetchImages] - Whether image URL metadata for each post is included in the returned result (default: false).
   *
   * [maxComments] - Maximum number of comments to retrieve with the returned post.
   *
   * [publish] - Whether a publish action should be performed when the post is updated (default: false).
   *
   * [revert] - Whether a revert action should be performed when the post is updated (default: false).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> patch(Post request, core.String blogId, core.String postId, {core.bool fetchBody, core.bool fetchImages, core.int maxComments, core.bool publish, core.bool revert, core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBody != null) queryParams["fetchBody"] = fetchBody;
    if (fetchImages != null) queryParams["fetchImages"] = fetchImages;
    if (maxComments != null) queryParams["maxComments"] = maxComments;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (publish != null) queryParams["publish"] = publish;
    if (revert != null) queryParams["revert"] = revert;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Post.fromJson(data));
  }

  /**
   * Publishes a draft post, optionally at the specific time of the given publishDate parameter.
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [publishDate] - Optional date and time to schedule the publishing of the Blog. If no publishDate parameter is given, the post is either published at the a previously saved schedule date (if present), or the current time. If a future date is given, the post will be scheduled to be published.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> publish(core.String blogId, core.String postId, {core.String publishDate, core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}/publish";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (publishDate != null) queryParams["publishDate"] = publishDate;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Post.fromJson(data));
  }

  /**
   * Revert a published or scheduled post to draft state.
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> revert(core.String blogId, core.String postId, {core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}/revert";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Post.fromJson(data));
  }

  /**
   * Search for a post.
   *
   * [blogId] - ID of the blog to fetch the post from.
   *
   * [q] - Query terms to search this blog for matching posts.
   *
   * [fetchBodies] - Whether the body content of posts is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
   *   Default: true
   *
   * [orderBy] - Sort search results
   *   Default: PUBLISHED
   *   Allowed values:
   *     published - Order by the date the post was published
   *     updated - Order by the date the post was last updated
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PostList> search(core.String blogId, core.String q, {core.bool fetchBodies, core.String orderBy, core.Map optParams}) {
    var url = "blogs/{blogId}/posts/search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (orderBy != null && !["published", "updated"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: published, updated");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (q == null) paramErrors.add("q is required");
    if (q != null) queryParams["q"] = q;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PostList.fromJson(data));
  }

  /**
   * Update a post.
   *
   * [request] - Post to send in this request
   *
   * [blogId] - The ID of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [fetchBody] - Whether the body content of the post is included with the result (default: true).
   *   Default: true
   *
   * [fetchImages] - Whether image URL metadata for each post is included in the returned result (default: false).
   *
   * [maxComments] - Maximum number of comments to retrieve with the returned post.
   *
   * [publish] - Whether a publish action should be performed when the post is updated (default: false).
   *
   * [revert] - Whether a revert action should be performed when the post is updated (default: false).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> update(Post request, core.String blogId, core.String postId, {core.bool fetchBody, core.bool fetchImages, core.int maxComments, core.bool publish, core.bool revert, core.Map optParams}) {
    var url = "blogs/{blogId}/posts/{postId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBody != null) queryParams["fetchBody"] = fetchBody;
    if (fetchImages != null) queryParams["fetchImages"] = fetchImages;
    if (maxComments != null) queryParams["maxComments"] = maxComments;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (publish != null) queryParams["publish"] = publish;
    if (revert != null) queryParams["revert"] = revert;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Post.fromJson(data));
  }
}

class UsersResource_ {

  final Client _client;

  UsersResource_(Client client) :
      _client = client;

  /**
   * Gets one user by ID.
   *
   * [userId] - The ID of the user to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<User> get(core.String userId, {core.Map optParams}) {
    var url = "users/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new User.fromJson(data));
  }
}

