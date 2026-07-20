import 'package:ahlachat/models/RoomModel.dart';

class FollowedRoom {
  int? id;
  int? userId;
  int? roomId;
  String? createdAt;
  String? updatedAt;
  RoomModel? room;

  FollowedRoom(
      {this.id,
        this.userId,
        this.roomId,
        this.createdAt,
        this.updatedAt,
        this.room});

  FollowedRoom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    roomId = json['room_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    room = json['room'] != null ? RoomModel.fromJson(json['room']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['room_id'] = roomId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (room != null) {
      data['room'] = room!.toJson();
    }
    return data;
  }
}
