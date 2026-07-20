

import 'package:ahlachat/models/Usermodel.dart';

class FamilyRequest {
  int? id;
  int? familyId;
  int? userId;
  int? status;
  String? createdAt;
  String? updatedAt;
  usermodel? user;

  FamilyRequest(
      {this.id,
        this.familyId,
        this.userId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.user});

  FamilyRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    familyId = json['Family_id'];
    userId = json['user_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Family_id'] = familyId;
    data['user_id'] = userId;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
