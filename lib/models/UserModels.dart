import 'package:ahlachat/models/AchiveModel.dart';

class UserModels {
  int? id;
  int? Achiveid;
  int? userId;

  AchiveModels?AchiveModel;
  String? createdAt;
  String? updatedAt;

  UserModels(
      {this.id, this.Achiveid, this.userId, this.createdAt, this.updatedAt});

  UserModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    Achiveid =json['Achiveid'];
    AchiveModel=json['model'] != null ? AchiveModels.fromJson(json['model']) : null;
    userId = int.parse(json['user_id'].toString());
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Achiveid'] = Achiveid;
    data['user_id'] = userId;
    data['created_at'] = createdAt;

    if (AchiveModel != null) {
      data['model'] = AchiveModel!.toJson();
    }
    data['updated_at'] = updatedAt;
    return data;
  }
}