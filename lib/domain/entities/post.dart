class Post {
  String? id;
  String? userId;
  String? imageUrl;
  String? caption;
  DateTime? createdAt;
  DateTime? expiresAt;

  Post({
    this.id,
    this.userId,
    this.imageUrl,
    this.caption,
    this.createdAt,
    this.expiresAt,
  });
}
