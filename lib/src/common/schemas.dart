part of blogger_v3_api_client;

class Blog {

  /** The JSON custom meta-data for the Blog */
  String customMetaData;

  /** The description of this blog. This is displayed underneath the title. */
  String description;

  /** The identifier for this resource. */
  String id;

  /** The kind of this entry. Always blogger#blog */
  String kind;

  /** The locale this Blog is set to. */
  BlogLocale locale;

  /** The name of this blog. This is displayed as the title. */
  String name;

  /** The container of pages in this blog. */
  BlogPages pages;

  /** The container of posts in this blog. */
  BlogPosts posts;

  /** RFC 3339 date-time when this blog was published. */
  String published;

  /** The API REST URL to fetch this resource from. */
  String selfLink;

  /** RFC 3339 date-time when this blog was last updated. */
  String updated;

  /** The URL where this blog is published. */
  String url;

  /** Create new Blog from JSON data */
  Blog.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The container of pages in this blog. */
class BlogPages {

  /** The URL of the container for pages in this blog. */
  String selfLink;

  /** The count of pages in this blog. */
  int totalItems;

  /** Create new BlogPages from JSON data */
  BlogPages.fromJson(Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for BlogPages */
  Map toJson() {
    var output = new Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of BlogPages */
  String toString() => JSON.stringify(this.toJson());

}

/** The locale this Blog is set to. */
class BlogLocale {

  /** The country this blog's locale is set to. */
  String country;

  /** The language this blog is authored in. */
  String language;

  /** The language variant this blog is authored in. */
  String variant;

  /** Create new BlogLocale from JSON data */
  BlogLocale.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The container of posts in this blog. */
class BlogPosts {

  /** The List of Posts for this Blog. */
  List<Post> items;

  /** The URL of the container for posts in this blog. */
  String selfLink;

  /** The count of posts in this blog. */
  int totalItems;

  /** Create new BlogPosts from JSON data */
  BlogPosts.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Post.fromJson(item));
      });
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for BlogPosts */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class BlogList {

  /** The list of Blogs this user has Authorship or Admin rights over. */
  List<Blog> items;

  /** The kind of this entity. Always blogger#blogList */
  String kind;

  /** Create new BlogList from JSON data */
  BlogList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Blog.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BlogList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BlogList */
  String toString() => JSON.stringify(this.toJson());

}

class Comment {

  /** The author of this Comment. */
  CommentAuthor author;

  /** Data about the blog containing this comment. */
  CommentBlog blog;

  /** The actual content of the comment. May include HTML markup. */
  String content;

  /** The identifier for this resource. */
  String id;

  /** Data about the comment this is in reply to. */
  CommentInReplyTo inReplyTo;

  /** The kind of this entry. Always blogger#comment */
  String kind;

  /** Data about the post containing this comment. */
  CommentPost post;

  /** RFC 3339 date-time when this comment was published. */
  String published;

  /** The API REST URL to fetch this resource from. */
  String selfLink;

  /** RFC 3339 date-time when this comment was last updated. */
  String updated;

  /** Create new Comment from JSON data */
  Comment.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Data about the post containing this comment. */
class CommentPost {

  /** The identifier of the post containing this comment. */
  String id;

  /** Create new CommentPost from JSON data */
  CommentPost.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for CommentPost */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of CommentPost */
  String toString() => JSON.stringify(this.toJson());

}

/** Data about the comment this is in reply to. */
class CommentInReplyTo {

  /** The identified of the parent of this comment. */
  String id;

  /** Create new CommentInReplyTo from JSON data */
  CommentInReplyTo.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for CommentInReplyTo */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of CommentInReplyTo */
  String toString() => JSON.stringify(this.toJson());

}

/** The author of this Comment. */
class CommentAuthor {

  /** The display name. */
  String displayName;

  /** The identifier of the Comment creator. */
  String id;

  /** The comment creator's avatar. */
  CommentAuthorImage image;

  /** The URL of the Comment creator's Profile page. */
  String url;

  /** Create new CommentAuthor from JSON data */
  CommentAuthor.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The comment creator's avatar. */
class CommentAuthorImage {

  /** The comment creator's avatar URL. */
  String url;

  /** Create new CommentAuthorImage from JSON data */
  CommentAuthorImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommentAuthorImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommentAuthorImage */
  String toString() => JSON.stringify(this.toJson());

}

/** Data about the blog containing this comment. */
class CommentBlog {

  /** The identifier of the blog containing this comment. */
  String id;

  /** Create new CommentBlog from JSON data */
  CommentBlog.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for CommentBlog */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of CommentBlog */
  String toString() => JSON.stringify(this.toJson());

}

class CommentList {

  /** The List of Comments for a Post. */
  List<Comment> items;

  /** The kind of this entry. Always blogger#commentList */
  String kind;

  /** Pagination token to fetch the next page, if one exists. */
  String nextPageToken;

  /** Pagination token to fetch the previous page, if one exists. */
  String prevPageToken;

  /** Create new CommentList from JSON data */
  CommentList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Comment.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class Page {

  /** The author of this Page. */
  PageAuthor author;

  /** Data about the blog containing this Page. */
  PageBlog blog;

  /** The body content of this Page, in HTML. */
  String content;

  /** The identifier for this resource. */
  String id;

  /** The kind of this entity. Always blogger#page */
  String kind;

  /** RFC 3339 date-time when this Page was published. */
  String published;

  /** The API REST URL to fetch this resource from. */
  String selfLink;

  /** The title of this entity. This is the name displayed in the Admin user interface. */
  String title;

  /** RFC 3339 date-time when this Page was last updated. */
  String updated;

  /** The URL that this Page is displayed at. */
  String url;

  /** Create new Page from JSON data */
  Page.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Data about the blog containing this Page. */
class PageBlog {

  /** The identifier of the blog containing this page. */
  String id;

  /** Create new PageBlog from JSON data */
  PageBlog.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for PageBlog */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of PageBlog */
  String toString() => JSON.stringify(this.toJson());

}

/** The author of this Page. */
class PageAuthor {

  /** The display name. */
  String displayName;

  /** The identifier of the Page creator. */
  String id;

  /** The page author's avatar. */
  PageAuthorImage image;

  /** The URL of the Page creator's Profile page. */
  String url;

  /** Create new PageAuthor from JSON data */
  PageAuthor.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The page author's avatar. */
class PageAuthorImage {

  /** The page author's avatar URL. */
  String url;

  /** Create new PageAuthorImage from JSON data */
  PageAuthorImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PageAuthorImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PageAuthorImage */
  String toString() => JSON.stringify(this.toJson());

}

class PageList {

  /** The list of Pages for a Blog. */
  List<Page> items;

  /** The kind of this entity. Always blogger#pageList */
  String kind;

  /** Create new PageList from JSON data */
  PageList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Page.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for PageList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of PageList */
  String toString() => JSON.stringify(this.toJson());

}

class Post {

  /** The author of this Post. */
  PostAuthor author;

  /** Data about the blog containing this Post. */
  PostBlog blog;

  /** The content of the Post. May contain HTML markup. */
  String content;

  /** The JSON meta-data for the Post. */
  String customMetaData;

  /** The identifier of this Post. */
  String id;

  /** The kind of this entity. Always blogger#post */
  String kind;

  /** The list of labels this Post was tagged with. */
  List<String> labels;

  /** The location for geotagged posts. */
  PostLocation location;

  /** RFC 3339 date-time when this Post was published. */
  String published;

  /** The container of comments on this Post. */
  PostReplies replies;

  /** The API REST URL to fetch this resource from. */
  String selfLink;

  /** The title of the Post. */
  String title;

  /** RFC 3339 date-time when this Post was last updated. */
  String updated;

  /** The URL where this Post is displayed. */
  String url;

  /** Create new Post from JSON data */
  Post.fromJson(Map json) {
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
      labels = [];
      json["labels"].forEach((item) {
        labels.add(item);
      });
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
  Map toJson() {
    var output = new Map();

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
      output["labels"] = new List();
      labels.forEach((item) {
        output["labels"].add(item);
      });
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
  String toString() => JSON.stringify(this.toJson());

}

/** Data about the blog containing this Post. */
class PostBlog {

  /** The identifier of the Blog that contains this Post. */
  String id;

  /** Create new PostBlog from JSON data */
  PostBlog.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for PostBlog */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of PostBlog */
  String toString() => JSON.stringify(this.toJson());

}

/** The author of this Post. */
class PostAuthor {

  /** The display name. */
  String displayName;

  /** The identifier of the Post creator. */
  String id;

  /** The Post author's avatar. */
  PostAuthorImage image;

  /** The URL of the Post creator's Profile page. */
  String url;

  /** Create new PostAuthor from JSON data */
  PostAuthor.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The Post author's avatar. */
class PostAuthorImage {

  /** The Post author's avatar URL. */
  String url;

  /** Create new PostAuthorImage from JSON data */
  PostAuthorImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PostAuthorImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PostAuthorImage */
  String toString() => JSON.stringify(this.toJson());

}

/** The location for geotagged posts. */
class PostLocation {

  /** Location's latitude. */
  num lat;

  /** Location's longitude. */
  num lng;

  /** Location name. */
  String name;

  /** Location's viewport span. Can be used when rendering a map preview. */
  String span;

  /** Create new PostLocation from JSON data */
  PostLocation.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The container of comments on this Post. */
class PostReplies {

  /** The List of Comments for this Post. */
  List<Comment> items;

  /** The URL of the comments on this post. */
  String selfLink;

  /** The count of comments on this post. */
  String totalItems;

  /** Create new PostReplies from JSON data */
  PostReplies.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Comment.fromJson(item));
      });
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for PostReplies */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class PostList {

  /** The list of Posts for this Blog. */
  List<Post> items;

  /** The kind of this entity. Always blogger#postList */
  String kind;

  /** Pagination token to fetch the next page, if one exists. */
  String nextPageToken;

  /** Pagination token to fetch the previous page, if one exists. */
  String prevPageToken;

  /** Create new PostList from JSON data */
  PostList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Post.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class User {

  /** Profile summary information. */
  String about;

  /** The container of blogs for this user. */
  UserBlogs blogs;

  /** The timestamp of when this profile was created, in seconds since epoch. */
  String created;

  /** The display name. */
  String displayName;

  /** The identifier for this User. */
  String id;

  /** The kind of this entity. Always blogger#user */
  String kind;

  /** This user's locale */
  UserLocale locale;

  /** The API REST URL to fetch this resource from. */
  String selfLink;

  /** The user's profile page. */
  String url;

  /** Create new User from JSON data */
  User.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The container of blogs for this user. */
class UserBlogs {

  /** The URL of the Blogs for this user. */
  String selfLink;

  /** Create new UserBlogs from JSON data */
  UserBlogs.fromJson(Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for UserBlogs */
  Map toJson() {
    var output = new Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of UserBlogs */
  String toString() => JSON.stringify(this.toJson());

}

/** This user's locale */
class UserLocale {

  /** The user's country setting. */
  String country;

  /** The user's language setting. */
  String language;

  /** The user's language variant setting. */
  String variant;

  /** Create new UserLocale from JSON data */
  UserLocale.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

