import 'package:ahlachat/util/app_constants.dart';

class AchiveModels {
  int? id;
  String? image;
  String? blackimage;
  String? name;
  String? status;
   var description;
  String? reason;
  String? createdAt;
  String? updatedAt;

  AchiveModels(
      {this.id,
        this.image,
        this.blackimage,
        this.name,
        this.description,
        this.status,
        this.reason,
        this.createdAt,
        this.updatedAt});

  AchiveModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = AppConstants.Image_URL+json['image'];
    blackimage = AppConstants.Image_URL+json['blackimage'];
    name = json['name'];
    description = json['description'];
    status = json['status'];
    reason = json['reason'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['blackimage'] = blackimage;
    data['name'] = name;
    data['status'] = status;
    data['description']  =description;
    data['reason'] = reason;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}