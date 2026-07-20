

import 'package:ahlachat/models/Usermodel.dart';

class KickedUser {
  int? id;
  int? userId;
  int? roomId;
  String? reason;
  int? state;
  String? createdAt;
  String? updatedAt;
  usermodel? user;

  KickedUser(
      {this.id,
        this.userId,
        this.roomId,
        this.reason,
        this.state,
        this.createdAt,
        this.updatedAt,
        this.user});

  KickedUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    roomId = json['room_id'];
    reason = json['reason'];
    state = json['state'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['room_id'] = roomId;
    data['reason'] = reason;
    data['state'] = state;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}