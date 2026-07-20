
import 'package:ahlachat/models/Usermodel.dart';

class joinRoom {
  int? id;
  int? userId;
  int? index;
  int? roomId;
  String? createdAt;
  String? updatedAt;
  usermodel? user;
  joinRoom(
      {this.id,
        this.userId,
        this.index,
        this.roomId,
        this.user,
        this.createdAt,
        this.updatedAt});

  joinRoom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    index = json['index'];
    roomId = json['room_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['index'] = index;
    data['room_id'] = roomId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}