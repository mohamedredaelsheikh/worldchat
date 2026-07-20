import 'package:ahlachat/models/Usermodel.dart';


class visitors {
  int? id;
  String? userId;
  String? visitorId;
  String? createdAt;
  String? updatedAt;
  usermodel? user;

  visitors(
      {this.id,
        this.userId,
        this.visitorId,
        this.createdAt,
        this.updatedAt,
        this.user});

  visitors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    visitorId = json['visitor_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['visitor_id'] = visitorId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}