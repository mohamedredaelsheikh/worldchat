import 'package:ahlachat/models/Usermodel.dart';


class Comments {
  int? id;
  String? postId;
  String? userId;
  String? comment;
  String? commentReplay;
  int? likes;
  String? createdAt;
  String? updatedAt;
  usermodel? user;

  Comments(
      {this.id,
        this.postId,
        this.userId,
        this.comment,
        this.commentReplay,
        this.likes,
        this.createdAt,
        this.updatedAt,
        this.user});

  Comments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['post_id'];
    userId = json['user_id'];
    comment = json['Comment'];
    commentReplay = json['CommentReplay']??"";
    likes = json['likes'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['post_id'] = postId;
    data['user_id'] = userId;
    data['Comment'] = comment;
    data['CommentReplay'] = commentReplay;
    data['likes'] = likes;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}