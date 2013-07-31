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
    if (updated != null) {
      output["updated"] = updated;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of Blog */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

class BlogList {

  /** The list of Blogs this user has Authorship or Admin rights over. */
  core.List<Blog> items;

  /** The kind of this entity. Always blogger#blogList */
  core.String kind;

  /** Create new BlogList from JSON data */
  BlogList.fromJson(core.Map json) {
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

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BlogList */
  core.String toString() => JSON.stringify(this.toJson());

}

class BlogPerUserInfo {

  core.String blogId;

  core.String kind;

  core.String photosAlbumKey;

  core.String userId;

  /** Create new BlogPerUserInfo from JSON data */
  BlogPerUserInfo.fromJson(core.Map json) {
    if (json.containsKey("blogId")) {
      blogId = json["blogId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("photosAlbumKey")) {
      photosAlbumKey = json["photosAlbumKey"];
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
    if (kind != null) {
      output["kind"] = kind;
    }
    if (photosAlbumKey != null) {
      output["photosAlbumKey"] = photosAlbumKey;
    }
    if (userId != null) {
      output["userId"] = userId;
    }

    return output;
  }

  /** Return String representation of BlogPerUserInfo */
  core.String toString() => JSON.stringify(this.toJson());

}

class BlogUserInfo {

  Blog blog;

  core.String kind;

  BlogPerUserInfo user;

  /** Create new BlogUserInfo from JSON data */
  BlogUserInfo.fromJson(core.Map json) {
    if (json.containsKey("blog")) {
      blog = new Blog.fromJson(json["blog"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("user")) {
      user = new BlogPerUserInfo.fromJson(json["user"]);
    }
  }

  /** Create JSON Object for BlogUserInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (blog != null) {
      output["blog"] = blog.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (user != null) {
      output["user"] = user.toJson();
    }

    return output;
  }

  /** Return String representation of BlogUserInfo */
  core.String toString() => JSON.stringify(this.toJson());

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
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Comment */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

class Page {

  /** The author of this Page. */
  PageAuthor author;

  /** Data about the blog containing this Page. */
  PageBlog blog;

  /** The body content of this Page, in HTML. */
  core.String content;

  /** The identifier for this resource. */
  core.String id;

  /** The kind of this entity. Always blogger#page */
  core.String kind;

  /** RFC 3339 date-time when this Page was published. */
  core.String published;

  /** The API REST URL to fetch this resource from. */
  core.String selfLink;

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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

  /** The identifier of this Post. */
  core.String id;

  /** The kind of this entity. Always blogger#post */
  core.String kind;

  /** The list of labels this Post was tagged with. */
  core.List<core.String> labels;

  /** The location for geotagged posts. */
  PostLocation location;

  /** RFC 3339 date-time when this Post was published. */
  core.String published;

  /** The container of comments on this Post. */
  PostReplies replies;

  /** The API REST URL to fetch this resource from. */
  core.String selfLink;

  /** The title of the Post. */
  core.String title;

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
    if (json.containsKey("id")) {
      id = json["id"];
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
    if (json.containsKey("replies")) {
      replies = new PostReplies.fromJson(json["replies"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
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
    if (id != null) {
      output["id"] = id;
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
    if (replies != null) {
      output["replies"] = replies.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
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

  /** Return String representation of Post */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

class PostList {

  /** The list of Posts for this Blog. */
  core.List<Post> items;

  /** The kind of this entity. Always blogger#postList */
  core.String kind;

  /** Pagination token to fetch the next page, if one exists. */
  core.String nextPageToken;

  /** Pagination token to fetch the previous page, if one exists. */
  core.String prevPageToken;

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
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
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
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }

    return output;
  }

  /** Return String representation of PostList */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
