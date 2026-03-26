import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:smart_threads/domain/entities/post.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
@HiveType(typeId: 0)
class PostModel with _$PostModel {
  const PostModel._();

  const factory PostModel({
    @HiveField(0) required String id,
    @HiveField(1) required String content,
    @HiveField(2) required String authorId,
    @HiveField(3) required DateTime createdAt,
    @HiveField(4) required int likes,
    @HiveField(5) @Default(false) bool isLiked,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Post toEntity() {
    return Post(
      id: id,
      content: content,
      authorId: authorId,
      createdAt: createdAt.toIso8601String(),
      likes: likes,
      isLiked: isLiked,
    );
  }

  factory PostModel.fromEntity(Post post) {
    return PostModel(
      id: post.id,
      content: post.content,
      authorId: post.authorId,
      createdAt: DateTime.parse(post.createdAt),
      likes: post.likes,
      isLiked: post.isLiked,
    );
  }
}
