

import 'package:ahlachat/models/Usermodel.dart';

class Like {
  int? id;
  String? postId;
  String? userId;
  String? createdAt;
  String? updatedAt;
  usermodel? user;

  Like(
      {this.id,
        this.postId,
        this.userId,
        this.createdAt,
        this.updatedAt,
        this.user});

  Like.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['post_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['post_id'] = postId;
    data['user_id'] = userId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}