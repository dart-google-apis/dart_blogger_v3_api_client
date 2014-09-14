part of blogger_v3_api;

class Blog {

  /** The JSON custom meta-data for the Blog */
  core.String customMetaData;

  /** The description of this blog. This is displayed underneath the title. */
  core.String description;

  /** The identifier for this resource. */
  core.String id;

  /** The kind of this entry. Always blogger#blog */
  core.String kind;

  /** The locale this Blog is set to. */
  BlogLocale locale;

  /** The name of this blog. This is displayed as the title. */
  core.String name;

  /** The container of pages in this blog. */
  BlogPages pages;

  /** The container of posts in this blog. */
  BlogPosts posts;

  /** RFC 3339 date-time when this blog was published. */
  core.String published;

  /** The API REST URL to fetch this resource from. */
  core.String selfLink;

  /** The status of the blog. */
  core.String status;

  /** RFC 3339 date-time when this blog was last updated. */
  core.String updated;

  /** The URL where this blog is published. */
  core.String url;

  /** Create new Blog from JSON data */
  Blog.fromJson(core.Map json) {
    if (json.containsKey("customMetaData")) {
      customMetaData = json["customMetaData"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("locale")) {
      locale = new BlogLocale.fromJson(json["locale"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("pages")) {
      pages = new BlogPages.fromJson(json["pages"]);
    }
    if (json.containsKey("posts")) {
      posts = new BlogPosts.fromJson(json["posts"]);
    }
    if (json.containsKey("published")) {
      published = json["published"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for Blog */
  core.Map toJson() {
    var output = new core.Map();

    if (customMetaData != null) {
      output["customMetaData"] = customMetaData;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (locale != null) {
      output["locale"] = locale.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (pages != null) {
      output["pages"] = pages.toJson();
    }
    if (posts != null) {
      output["posts"] = posts.toJson();
    }
    if (published != null) {
      output["published"] = published;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of Blog */
  core.String toString() => JSON.encode(this.toJson());

}

/** The locale this Blog is set to. */
class BlogLocale {

  /** The country this blog's locale is set to. */
  core.String country;

  /** The language this blog is authored in. */
  core.String language;

  /** The language variant this blog is authored in. */
  core.String variant;

  /** Create new BlogLocale from JSON data */
  BlogLocale.fromJson(core.Map json) {
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("variant")) {
      variant = json["variant"];
    }
  }

  /** Create JSON Object for BlogLocale */
  core.Map toJson() {
    var output = new core.Map();

    if (country != null) {
      output["country"] = country;
    }
    if (language != null) {
      output["language"] = language;
    }
    if (variant != null) {
      output["variant"] = variant;
    }

    return output;
  }

  /** Return String representation of BlogLocale */
  core.String toString() => JSON.encode(this.toJson());

}

/** The container of pages in this blog. */
class BlogPages {

  /** The URL of the container for pages in this blog. */
  core.String selfLink;

  /** The count of pages in this blog. */
  core.int totalItems;

  /** Create new BlogPages from JSON data */
  BlogPages.fromJson(core.Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for BlogPages */
  core.Map toJson() {
    var output = new core.Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of BlogPages */
  core.String toString() => JSON.encode(this.toJson());

}

/** The container of posts in this blog. */
class BlogPosts {

  /** The List of Posts for this Blog. */
  core.List<Post> items;

  /** The URL of the container for posts in this blog. */
  core.String selfLink;

  /** The count of posts in this blog. */
  core.int totalItems;

  /** Create new BlogPosts from JSON data */
  BlogPosts.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Post.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for BlogPosts */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of BlogPosts */
  core.String toString() => JSON.encode(this.toJson());

}

class BlogList {

  /** Admin level list of blog per-user information */
  core.List<BlogUserInfo> blogUserInfos;

  /** The list of Blogs this user has Authorship or Admin rights over. */
  core.List<Blog> items;

  /** The kind of this entity. Always blogger#blogList */
  core.String kind;

  /** Create new BlogList from JSON data */
  BlogList.fromJson(core.Map json) {
    if (json.containsKey("blogUserInfos")) {
      blogUserInfos = json["blogUserInfos"].map((blogUserInfosItem) => new BlogUserInfo.fromJson(blogUserInfosItem)).toList();
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Blog.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BlogList */
  core.Map toJson() {
    var output = new core.Map();

    if (blogUserInfos != null) {
      output["blogUserInfos"] = blogUserInfos.map((blogUserInfosItem) => blogUserInfosItem.toJson()).toList();
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BlogList */
  core.String toString() => JSON.encode(this.toJson());

}

class BlogPerUserInfo {

  /** ID of the Blog resource */
  core.String blogId;

  /** True if the user has Admin level access to the blog. */
  core.bool hasAdminAccess;

  /** The kind of this entity. Always blogger#blogPerUserInfo */
  core.String kind;

  /** The Photo Album Key for the user when adding photos to the blog */
  core.String photosAlbumKey;

  /** Access permissions that the user has for the blog (ADMIN, AUTHOR, or READER). */
  core.String role;

  /** ID of the User */
  core.String userId;

  /** Create new BlogPerUserInfo from JSON data */
  BlogPerUserInfo.fromJson(core.Map json) {
    if (json.containsKey("blogId")) {
      blogId = json["blogId"];
    }
    if (json.containsKey("hasAdminAccess")) {
      hasAdminAccess = json["hasAdminAccess"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("photosAlbumKey")) {
      photosAlbumKey = json["photosAlbumKey"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("userId")) {
      userId = json["userId"];
    }
  }

  /** Create JSON Object for BlogPerUserInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (blogId != null) {
      output["blogId"] = blogId;
    }
    if (hasAdminAccess != null) {
      output["hasAdminAccess"] = hasAdminAccess;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (photosAlbumKey != null) {
      output["photosAlbumKey"] = photosAlbumKey;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (userId != null) {
      output["userId"] = userId;
    }

    return output;
  }

  /** Return String representation of BlogPerUserInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class BlogUserInfo {

  /** The Blog resource. */
  Blog blog;

  /** Information about a User for the Blog. */
  BlogPerUserInfo blog_user_info;

  /** The kind of this entity. Always blogger#blogUserInfo */
  core.String kind;

  /** Create new BlogUserInfo from JSON data */
  BlogUserInfo.fromJson(core.Map json) {
    if (json.containsKey("blog")) {
      blog = new Blog.fromJson(json["blog"]);
    }
    if (json.containsKey("blog_user_info")) {
      blog_user_info = new BlogPerUserInfo.fromJson(json["blog_user_info"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BlogUserInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (blog != null) {
      output["blog"] = blog.toJson();
    }
    if (blog_user_info != null) {
      output["blog_user_info"] = blog_user_info.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BlogUserInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class Comment {

  /** The author of this Comment. */
  CommentAuthor author;

  /** Data about the blog containing this comment. */
  CommentBlog blog;

  /** The actual content of the comment. May include HTML markup. */
  core.String content;

  /** The identifier for this resource. */
  core.String id;

  /** Data about the comment this is in reply to. */
  CommentInReplyTo inReplyTo;

  /** The kind of this entry. Always blogger#comment */
  core.String kind;

  /** Data about the post containing this comment. */
  CommentPost post;

  /** RFC 3339 date-time when this comment was published. */
  core.String published;

  /** The API REST URL to fetch this resource from. */
  core.String selfLink;

  /** The status of the comment (only populated for admin users) */
  core.String status;

  /** RFC 3339 date-time when this comment was last updated. */
  core.String updated;

  /** Create new Comment from JSON data */
  Comment.fromJson(core.Map json) {
    if (json.containsKey("author")) {
      author = new CommentAuthor.fromJson(json["author"]);
    }
    if (json.containsKey("blog")) {
      blog = new CommentBlog.fromJson(json["blog"]);
    }
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("inReplyTo")) {
      inReplyTo = new CommentInReplyTo.fromJson(json["inReplyTo"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("post")) {
      post = new CommentPost.fromJson(json["post"]);
    }
    if (json.containsKey("published")) {
      published = json["published"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for Comment */
  core.Map toJson() {
    var output = new core.Map();

    if (author != null) {
      output["author"] = author.toJson();
    }
    if (blog != null) {
      output["blog"] = blog.toJson();
    }
    if (content != null) {
      output["content"] = content;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (inReplyTo != null) {
      output["inReplyTo"] = inReplyTo.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (post != null) {
      output["post"] = post.toJson();
    }
    if (published != null) {
      output["published"] = published;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Comment */
  core.String toString() => JSON.encode(this.toJson());

}

/** The author of this Comment. */
class CommentAuthor {

  /** The display name. */
  core.String displayName;

  /** The identifier of the Comment creator. */
  core.String id;

  /** The comment creator's avatar. */
  CommentAuthorImage image;

  /** The URL of the Comment creator's Profile page. */
  core.String url;

  /** Create new CommentAuthor from JSON data */
  CommentAuthor.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new CommentAuthorImage.fromJson(json["image"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommentAuthor */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommentAuthor */
  core.String toString() => JSON.encode(this.toJson());

}

/** The comment creator's avatar. */
class CommentAuthorImage {

  /** The comment creator's avatar URL. */
  core.String url;

  /** Create new CommentAuthorImage from JSON data */
  CommentAuthorImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommentAuthorImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommentAuthorImage */
  core.String toString() => JSON.encode(this.toJson());

}

/** Data about the blog containing this comment. */
class CommentBlog {

  /** The identifier of the blog containing this comment. */
  core.String id;

  /** Create new CommentBlog from JSON data */
  CommentBlog.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for CommentBlog */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of CommentBlog */
  core.String toString() => JSON.encode(this.toJson());

}

/** Data about the comment this is in reply to. */
class CommentInReplyTo {

  /** The identified of the parent of this comment. */
  core.String id;

  /** Create new CommentInReplyTo from JSON data */
  CommentInReplyTo.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for CommentInReplyTo */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of CommentInReplyTo */
  core.String toString() => JSON.encode(this.toJson());

}

/** Data about the post containing this comment. */
class CommentPost {

  /** The identifier of the post containing this comment. */
  core.String id;

  /** Create new CommentPost from JSON data */
  CommentPost.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for CommentPost */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of CommentPost */
  core.String toString() => JSON.encode(this.toJson());

}

class CommentList {

  /** The List of Comments for a Post. */
  core.List<Comment> items;

  /** The kind of this entry. Always blogger#commentList */
  core.String kind;

  /** Pagination token to fetch the next page, if one exists. */
  core.String nextPageToken;

  /** Pagination token to fetch the previous page, if one exists. */
  core.String prevPageToken;

  /** Create new CommentList from JSON data */
  CommentList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Comment.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
  }

  /** Create JSON Object for CommentList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }

    return output;
  }

  /** Return String representation of CommentList */
  core.String toString() => JSON.encode(this.toJson());

}

class Page {

  /** The author of this Page. */
  PageAuthor author;

  /** Data about the blog containing this Page. */
  PageBlog blog;

  /** The body content of this Page, in HTML. */
  core.String content;

  /** Etag of the resource. */
  core.String etag;

  /** The identifier for this resource. */
  core.String id;

  /** The kind of this entity. Always blogger#page */
  core.String kind;

  /** RFC 3339 date-time when this Page was published. */
  core.String published;

  /** The API REST URL to fetch this resource from. */
  core.String selfLink;

  /** The status of the page for admin resources (either LIVE or DRAFT). */
  core.String status;

  /** The title of this entity. This is the name displayed in the Admin user interface. */
  core.String title;

  /** RFC 3339 date-time when this Page was last updated. */
  core.String updated;

  /** The URL that this Page is displayed at. */
  core.String url;

  /** Create new Page from JSON data */
  Page.fromJson(core.Map json) {
    if (json.containsKey("author")) {
      author = new PageAuthor.fromJson(json["author"]);
    }
    if (json.containsKey("blog")) {
      blog = new PageBlog.fromJson(json["blog"]);
    }
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("published")) {
      published = json["published"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for Page */
  core.Map toJson() {
    var output = new core.Map();

    if (author != null) {
      output["author"] = author.toJson();
    }
    if (blog != null) {
      output["blog"] = blog.toJson();
    }
    if (content != null) {
      output["content"] = content;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (published != null) {
      output["published"] = published;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of Page */
  core.String toString() => JSON.encode(this.toJson());

}

/** The author of this Page. */
class PageAuthor {

  /** The display name. */
  core.String displayName;

  /** The identifier of the Page creator. */
  core.String id;

  /** The page author's avatar. */
  PageAuthorImage image;

  /** The URL of the Page creator's Profile page. */
  core.String url;

  /** Create new PageAuthor from JSON data */
  PageAuthor.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new PageAuthorImage.fromJson(json["image"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PageAuthor */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PageAuthor */
  core.String toString() => JSON.encode(this.toJson());

}

/** The page author's avatar. */
class PageAuthorImage {

  /** The page author's avatar URL. */
  core.String url;

  /** Create new PageAuthorImage from JSON data */
  PageAuthorImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PageAuthorImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PageAuthorImage */
  core.String toString() => JSON.encode(this.toJson());

}

/** Data about the blog containing this Page. */
class PageBlog {

  /** The identifier of the blog containing this page. */
  core.String id;

  /** Create new PageBlog from JSON data */
  PageBlog.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for PageBlog */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of PageBlog */
  core.String toString() => JSON.encode(this.toJson());

}

class PageList {

  /** The list of Pages for a Blog. */
  core.List<Page> items;

  /** The kind of this entity. Always blogger#pageList */
  core.String kind;

  /** Create new PageList from JSON data */
  PageList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Page.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for PageList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of PageList */
  core.String toString() => JSON.encode(this.toJson());

}

class Pageviews {

  /** Blog Id */
  core.String blogId;

  /** The container of posts in this blog. */
  core.List<PageviewsCounts> counts;

  /** The kind of this entry. Always blogger#page_views */
  core.String kind;

  /** Create new Pageviews from JSON data */
  Pageviews.fromJson(core.Map json) {
    if (json.containsKey("blogId")) {
      blogId = json["blogId"];
    }
    if (json.containsKey("counts")) {
      counts = json["counts"].map((countsItem) => new PageviewsCounts.fromJson(countsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Pageviews */
  core.Map toJson() {
    var output = new core.Map();

    if (blogId != null) {
      output["blogId"] = blogId;
    }
    if (counts != null) {
      output["counts"] = counts.map((countsItem) => countsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Pageviews */
  core.String toString() => JSON.encode(this.toJson());

}

class PageviewsCounts {

  /** Count of page views for the given time range */
  core.int count;

  /** Time range the given count applies to */
  core.String timeRange;

  /** Create new PageviewsCounts from JSON data */
  PageviewsCounts.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("timeRange")) {
      timeRange = json["timeRange"];
    }
  }

  /** Create JSON Object for PageviewsCounts */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (timeRange != null) {
      output["timeRange"] = timeRange;
    }

    return output;
  }

  /** Return String representation of PageviewsCounts */
  core.String toString() => JSON.encode(this.toJson());

}

class Post {

  /** The author of this Post. */
  PostAuthor author;

  /** Data about the blog containing this Post. */
  PostBlog blog;

  /** The content of the Post. May contain HTML markup. */
  core.String content;

  /** The JSON meta-data for the Post. */
  core.String customMetaData;

  /** Etag of the resource. */
  core.String etag;

  /** The identifier of this Post. */
  core.String id;

  /** Display image for the Post. */
  core.List<PostImages> images;

  /** The kind of this entity. Always blogger#post */
  core.String kind;

  /** The list of labels this Post was tagged with. */
  core.List<core.String> labels;

  /** The location for geotagged posts. */
  PostLocation location;

  /** RFC 3339 date-time when this Post was published. */
  core.String published;

  /** Comment control and display setting for readers of this post. */
  core.String readerComments;

  /** The container of comments on this Post. */
  PostReplies replies;

  /** The API REST URL to fetch this resource from. */
  core.String selfLink;

  /** Status of the post. Only set for admin-level requests */
  core.String status;

  /** The title of the Post. */
  core.String title;

  /** The title link URL, similar to atom's related link. */
  core.String titleLink;

  /** RFC 3339 date-time when this Post was last updated. */
  core.String updated;

  /** The URL where this Post is displayed. */
  core.String url;

  /** Create new Post from JSON data */
  Post.fromJson(core.Map json) {
    if (json.containsKey("author")) {
      author = new PostAuthor.fromJson(json["author"]);
    }
    if (json.containsKey("blog")) {
      blog = new PostBlog.fromJson(json["blog"]);
    }
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("customMetaData")) {
      customMetaData = json["customMetaData"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("images")) {
      images = json["images"].map((imagesItem) => new PostImages.fromJson(imagesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("labels")) {
      labels = json["labels"].toList();
    }
    if (json.containsKey("location")) {
      location = new PostLocation.fromJson(json["location"]);
    }
    if (json.containsKey("published")) {
      published = json["published"];
    }
    if (json.containsKey("readerComments")) {
      readerComments = json["readerComments"];
    }
    if (json.containsKey("replies")) {
      replies = new PostReplies.fromJson(json["replies"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("titleLink")) {
      titleLink = json["titleLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for Post */
  core.Map toJson() {
    var output = new core.Map();

    if (author != null) {
      output["author"] = author.toJson();
    }
    if (blog != null) {
      output["blog"] = blog.toJson();
    }
    if (content != null) {
      output["content"] = content;
    }
    if (customMetaData != null) {
      output["customMetaData"] = customMetaData;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (images != null) {
      output["images"] = images.map((imagesItem) => imagesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (labels != null) {
      output["labels"] = labels.toList();
    }
    if (location != null) {
      output["location"] = location.toJson();
    }
    if (published != null) {
      output["published"] = published;
    }
    if (readerComments != null) {
      output["readerComments"] = readerComments;
    }
    if (replies != null) {
      output["replies"] = replies.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (titleLink != null) {
      output["titleLink"] = titleLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of Post */
  core.String toString() => JSON.encode(this.toJson());

}

/** The author of this Post. */
class PostAuthor {

  /** The display name. */
  core.String displayName;

  /** The identifier of the Post creator. */
  core.String id;

  /** The Post author's avatar. */
  PostAuthorImage image;

  /** The URL of the Post creator's Profile page. */
  core.String url;

  /** Create new PostAuthor from JSON data */
  PostAuthor.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new PostAuthorImage.fromJson(json["image"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PostAuthor */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PostAuthor */
  core.String toString() => JSON.encode(this.toJson());

}

/** The Post author's avatar. */
class PostAuthorImage {

  /** The Post author's avatar URL. */
  core.String url;

  /** Create new PostAuthorImage from JSON data */
  PostAuthorImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PostAuthorImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PostAuthorImage */
  core.String toString() => JSON.encode(this.toJson());

}

/** Data about the blog containing this Post. */
class PostBlog {

  /** The identifier of the Blog that contains this Post. */
  core.String id;

  /** Create new PostBlog from JSON data */
  PostBlog.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for PostBlog */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of PostBlog */
  core.String toString() => JSON.encode(this.toJson());

}

class PostImages {

  core.String url;

  /** Create new PostImages from JSON data */
  PostImages.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PostImages */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PostImages */
  core.String toString() => JSON.encode(this.toJson());

}

/** The location for geotagged posts. */
class PostLocation {

  /** Location's latitude. */
  core.num lat;

  /** Location's longitude. */
  core.num lng;

  /** Location name. */
  core.String name;

  /** Location's viewport span. Can be used when rendering a map preview. */
  core.String span;

  /** Create new PostLocation from JSON data */
  PostLocation.fromJson(core.Map json) {
    if (json.containsKey("lat")) {
      lat = json["lat"];
    }
    if (json.containsKey("lng")) {
      lng = json["lng"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("span")) {
      span = json["span"];
    }
  }

  /** Create JSON Object for PostLocation */
  core.Map toJson() {
    var output = new core.Map();

    if (lat != null) {
      output["lat"] = lat;
    }
    if (lng != null) {
      output["lng"] = lng;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (span != null) {
      output["span"] = span;
    }

    return output;
  }

  /** Return String representation of PostLocation */
  core.String toString() => JSON.encode(this.toJson());

}

/** The container of comments on this Post. */
class PostReplies {

  /** The List of Comments for this Post. */
  core.List<Comment> items;

  /** The URL of the comments on this post. */
  core.String selfLink;

  /** The count of comments on this post. */
  core.int totalItems;

  /** Create new PostReplies from JSON data */
  PostReplies.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Comment.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = (json["totalItems"] is core.String) ? core.int.parse(json["totalItems"]) : json["totalItems"];
    }
  }

  /** Create JSON Object for PostReplies */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of PostReplies */
  core.String toString() => JSON.encode(this.toJson());

}

class PostList {

  /** The list of Posts for this Blog. */
  core.List<Post> items;

  /** The kind of this entity. Always blogger#postList */
  core.String kind;

  /** Pagination token to fetch the next page, if one exists. */
  core.String nextPageToken;

  /** Create new PostList from JSON data */
  PostList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Post.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for PostList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of PostList */
  core.String toString() => JSON.encode(this.toJson());

}

class PostPerUserInfo {

  /** ID of the Blog that the post resource belongs to. */
  core.String blogId;

  /** True if the user has Author level access to the post. */
  core.bool hasEditAccess;

  /** The kind of this entity. Always blogger#postPerUserInfo */
  core.String kind;

  /** ID of the Post resource. */
  core.String postId;

  /** ID of the User. */
  core.String userId;

  /** Create new PostPerUserInfo from JSON data */
  PostPerUserInfo.fromJson(core.Map json) {
    if (json.containsKey("blogId")) {
      blogId = json["blogId"];
    }
    if (json.containsKey("hasEditAccess")) {
      hasEditAccess = json["hasEditAccess"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("postId")) {
      postId = json["postId"];
    }
    if (json.containsKey("userId")) {
      userId = json["userId"];
    }
  }

  /** Create JSON Object for PostPerUserInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (blogId != null) {
      output["blogId"] = blogId;
    }
    if (hasEditAccess != null) {
      output["hasEditAccess"] = hasEditAccess;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (postId != null) {
      output["postId"] = postId;
    }
    if (userId != null) {
      output["userId"] = userId;
    }

    return output;
  }

  /** Return String representation of PostPerUserInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class PostUserInfo {

  /** The kind of this entity. Always blogger#postUserInfo */
  core.String kind;

  /** The Post resource. */
  Post post;

  /** Information about a User for the Post. */
  PostPerUserInfo post_user_info;

  /** Create new PostUserInfo from JSON data */
  PostUserInfo.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("post")) {
      post = new Post.fromJson(json["post"]);
    }
    if (json.containsKey("post_user_info")) {
      post_user_info = new PostPerUserInfo.fromJson(json["post_user_info"]);
    }
  }

  /** Create JSON Object for PostUserInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (post != null) {
      output["post"] = post.toJson();
    }
    if (post_user_info != null) {
      output["post_user_info"] = post_user_info.toJson();
    }

    return output;
  }

  /** Return String representation of PostUserInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class PostUserInfosList {

  /** The list of Posts with User information for the post, for this Blog. */
  core.List<PostUserInfo> items;

  /** The kind of this entity. Always blogger#postList */
  core.String kind;

  /** Pagination token to fetch the next page, if one exists. */
  core.String nextPageToken;

  /** Create new PostUserInfosList from JSON data */
  PostUserInfosList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new PostUserInfo.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for PostUserInfosList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of PostUserInfosList */
  core.String toString() => JSON.encode(this.toJson());

}

class User {

  /** Profile summary information. */
  core.String about;

  /** The container of blogs for this user. */
  UserBlogs blogs;

  /** The timestamp of when this profile was created, in seconds since epoch. */
  core.String created;

  /** The display name. */
  core.String displayName;

  /** The identifier for this User. */
  core.String id;

  /** The kind of this entity. Always blogger#user */
  core.String kind;

  /** This user's locale */
  UserLocale locale;

  /** The API REST URL to fetch this resource from. */
  core.String selfLink;

  /** The user's profile page. */
  core.String url;

  /** Create new User from JSON data */
  User.fromJson(core.Map json) {
    if (json.containsKey("about")) {
      about = json["about"];
    }
    if (json.containsKey("blogs")) {
      blogs = new UserBlogs.fromJson(json["blogs"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("locale")) {
      locale = new UserLocale.fromJson(json["locale"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for User */
  core.Map toJson() {
    var output = new core.Map();

    if (about != null) {
      output["about"] = about;
    }
    if (blogs != null) {
      output["blogs"] = blogs.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (locale != null) {
      output["locale"] = locale.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of User */
  core.String toString() => JSON.encode(this.toJson());

}

/** The container of blogs for this user. */
class UserBlogs {

  /** The URL of the Blogs for this user. */
  core.String selfLink;

  /** Create new UserBlogs from JSON data */
  UserBlogs.fromJson(core.Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for UserBlogs */
  core.Map toJson() {
    var output = new core.Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of UserBlogs */
  core.String toString() => JSON.encode(this.toJson());

}

/** This user's locale */
class UserLocale {

  /** The user's country setting. */
  core.String country;

  /** The user's language setting. */
  core.String language;

  /** The user's language variant setting. */
  core.String variant;

  /** Create new UserLocale from JSON data */
  UserLocale.fromJson(core.Map json) {
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("variant")) {
      variant = json["variant"];
    }
  }

  /** Create JSON Object for UserLocale */
  core.Map toJson() {
    var output = new core.Map();

    if (country != null) {
      output["country"] = country;
    }
    if (language != null) {
      output["language"] = language;
    }
    if (variant != null) {
      output["variant"] = variant;
    }

    return output;
  }

  /** Return String representation of UserLocale */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
