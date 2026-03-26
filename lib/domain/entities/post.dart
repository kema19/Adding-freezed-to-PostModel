class Post {
  final String id;
  final String content;
  final String authorId;
  final DateTime createdAt;
  final int likes;
  final bool isLiked;

  Post({
    required this.id,
    required this.content,
    required this.authorId,
    required this.createdAt,
    required this.likes,
    this.isLiked = false,
  });

  Post copyWith({
    String? id,
    String? content,
    String? authorId,
    DateTime? createdAt,
    int? likes,
    bool? isLiked,
  }) {
    return Post(
      id: id ?? this.id,
      content: content ?? this.content,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      likes: likes ?? this.likes,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}
