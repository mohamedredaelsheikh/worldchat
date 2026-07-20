import 'package:ahlachat/models/Usermodel.dart';



class Follows {
  int? id;
  String? userId;
  String? senderId;
  int? status;
  String? createdAt;
  String? updatedAt;
  usermodel? user;
  usermodel? otheruser;
  Follows(
      {this.id,
        this.userId,
        this.senderId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.user,this.otheruser});

  Follows.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    senderId = json['sender_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    otheruser= json['otheruser'] != null ? usermodel.fromJson(json['otheruser']) : null;
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['sender_id'] = senderId;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;

    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (otheruser != null) {
      data['otheruser'] = otheruser!.toJson();
    }
    return data;
  }
}