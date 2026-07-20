

import 'package:ahlachat/models/VipModel.dart';

class MyVipmodel {
  int? id;
  int? userId;
  int? vipId;
  int? status;
  int? days;
  int? cost;
  VipModel ? Vip;
  var newId;
  var colorMessage;
  int? hidden;
  int? updateLevel;
  String? createdAt;
  String? updatedAt;

  MyVipmodel(
      {this.id,
        this.userId,
        this.vipId,
        this.status,
        this.days,
        this.cost,
        this.newId,
        this.colorMessage,
        this.hidden,
        this.updateLevel,
        this.createdAt,
        this.updatedAt,
      this.Vip
      });

  MyVipmodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    vipId = json['vip_id'];
    status = json['status'];
    days = json['days'];
    cost = json['cost'];
    newId = json['new_id'];
    colorMessage = json['Color_message'];
    hidden = json['Hidden'];
    updateLevel = json['update_level'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    Vip = json['vip'] != null ? VipModel.fromJson(json['vip']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['vip_id'] = vipId;
    data['status'] = status;
    data['days'] = days;
    data['cost'] = cost;
    data['new_id'] = newId;
    data['Color_message'] = colorMessage;
    data['Hidden'] = hidden;
    data['update_level'] = updateLevel;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (Vip != null) {
      data['vip'] = Vip!.toJson();
    }
    return data;
  }
}