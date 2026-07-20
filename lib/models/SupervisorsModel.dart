

import 'package:ahlachat/models/Usermodel.dart';

class Supervisors {
  int? id;
  String? userId;
  String? roomId;
  String? createdAt;
  String? updatedAt;
  usermodel? user;

  Supervisors(
      {this.id,
        this.userId,
        this.roomId,
        this.createdAt,
        this.updatedAt,
        this.user});

  Supervisors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    roomId = json['room_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['room_id'] = roomId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
