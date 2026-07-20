

import 'package:ahlachat/models/Usermodel.dart';

class joinagincy {
  int? id;
  int? userId;
  int? agancyId;
  int? status;
  String? createdAt;
  String? updatedAt;
  usermodel? user;

  joinagincy(
      {this.id,
        this.userId,
        this.agancyId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.user});

  joinagincy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    agancyId = json['agancy_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['agancy_id'] = agancyId;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
