class User {
  final String? id;
  final String? username;
  final String? email;
  final String? password;
  final String? avatarUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const User({
    this.id,
    this.username,
    this.email,
    this.password,
    this.avatarUrl,
    this.createdAt,
    this.updatedAt,
  });
}
