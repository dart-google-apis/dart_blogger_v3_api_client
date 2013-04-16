part of blogger_v3_api_client;

class BlogsResource extends Resource {

  BlogsResource(Client client) : super(client) {
  }

  /**
   * Gets one blog by id.
   *
   * [blogId] - The ID of the blog to get.
   *
   * [maxPosts] - Maximum number of posts to pull back with the blog.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Blog> get(core.String blogId, {core.int maxPosts, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (maxPosts != null) queryParams["maxPosts"] = maxPosts;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Blog.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieve a Blog by URL.
   *
   * [url] - The URL of the blog to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Blog> getByUrl(core.String url, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/byurl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (url == null) paramErrors.add("url is required");
    if (url != null) queryParams["url"] = url;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Blog.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of blogs, possibly filtered.
   *
   * [userId] - ID of the user whose blogs are to be fetched. Either the word 'self' (sans quote marks) or the user's profile identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BlogList> listByUser(core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "users/{userId}/blogs";
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BlogList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommentsResource extends Resource {

  CommentsResource(Client client) : super(client) {
  }

  /**
   * Gets one comment by id.
   *
   * [blogId] - ID of the blog to containing the comment.
   *
   * [postId] - ID of the post to fetch posts from.
   *
   * [commentId] - The ID of the comment to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Comment> get(core.String blogId, core.String postId, core.String commentId, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Comment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the comments for a blog, possibly filtered.
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
   * [optParams] - Additional query parameters
   */
  async.Future<CommentList> list(core.String blogId, core.String postId, {core.String endDate, core.bool fetchBodies, core.int maxResults, core.String pageToken, core.String startDate, core.Map optParams}) {
    var completer = new async.Completer();
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
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommentList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class PagesResource extends Resource {

  PagesResource(Client client) : super(client) {
  }

  /**
   * Gets one blog page by id.
   *
   * [blogId] - ID of the blog containing the page.
   *
   * [pageId] - The ID of the page to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Page> get(core.String blogId, core.String pageId, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Page.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves pages for a blog, possibly filtered.
   *
   * [blogId] - ID of the blog to fetch pages from.
   *
   * [fetchBodies] - Whether to retrieve the Page bodies.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PageList> list(core.String blogId, {core.bool fetchBodies, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/pages";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PageList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class PostsResource extends Resource {

  PostsResource(Client client) : super(client) {
  }

  /**
   * Delete a post by id.
   *
   * [blogId] - The Id of the Blog.
   *
   * [postId] - The ID of the Post.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String blogId, core.String postId, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get a post by id.
   *
   * [blogId] - ID of the blog to fetch the post from.
   *
   * [postId] - The ID of the post
   *
   * [maxComments] - Maximum number of comments to pull back on a post.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> get(core.String blogId, core.String postId, {core.int maxComments, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts/{postId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (maxComments != null) queryParams["maxComments"] = maxComments;
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Post.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [optParams] - Additional query parameters
   */
  async.Future<Post> getByPath(core.String blogId, core.String path, {core.int maxComments, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts/bypath";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (maxComments != null) queryParams["maxComments"] = maxComments;
    if (path == null) paramErrors.add("path is required");
    if (path != null) queryParams["path"] = path;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Post.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Add a post.
   *
   * [request] - Post to send in this request
   *
   * [blogId] - ID of the blog to fetch the post from.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> insert(Post request, core.String blogId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Post.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of posts, possibly filtered.
   *
   * [blogId] - ID of the blog to fetch posts from.
   *
   * [endDate] - Latest post date to fetch, a date-time with RFC 3339 formatting.
   *
   * [fetchBodies] - Whether the body content of posts is included.
   *
   * [labels] - Comma-separated list of labels to search for.
   *
   * [maxResults] - Maximum number of posts to fetch.
   *
   * [pageToken] - Continuation token if the request is paged.
   *
   * [startDate] - Earliest post date to fetch, a date-time with RFC 3339 formatting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PostList> list(core.String blogId, {core.String endDate, core.bool fetchBodies, core.String labels, core.int maxResults, core.String pageToken, core.String startDate, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (endDate != null) queryParams["endDate"] = endDate;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (labels != null) queryParams["labels"] = labels;
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PostList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [optParams] - Additional query parameters
   */
  async.Future<Post> patch(Post request, core.String blogId, core.String postId, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Post.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Search for a post.
   *
   * [blogId] - ID of the blog to fetch the post from.
   *
   * [q] - Query terms to search this blog for matching posts.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PostList> search(core.String blogId, core.String q, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts/search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PostList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [optParams] - Additional query parameters
   */
  async.Future<Post> update(Post request, core.String blogId, core.String postId, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Post.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UsersResource extends Resource {

  UsersResource(Client client) : super(client) {
  }

  /**
   * Gets one user by id.
   *
   * [userId] - The ID of the user to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<User> get(core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new User.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

