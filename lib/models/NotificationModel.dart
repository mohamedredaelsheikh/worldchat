

import 'package:ahlachat/util/app_constants.dart';

class Notificationmodel {
  int? id;
  String? tittle;
  String? message;
  String? image;
  String? createdAt;
  String? updatedAt;

  Notificationmodel(
      {this.id,
        this.tittle,
        this.message,
        this.image,
        this.createdAt,
        this.updatedAt});

  Notificationmodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tittle = json['title'];
    message = json['message'];
    image = AppConstants.Image_URL+json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['tittle'] = tittle;
    data['message'] = message;
    data['image'] = image;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

