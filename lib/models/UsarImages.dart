import 'package:ahlachat/util/app_constants.dart';

class UserImages {
  int? id;
  String? image;
  int? userId;
  String? createdAt;
  String? updatedAt;

  UserImages(
      {this.id, this.image, this.userId, this.createdAt, this.updatedAt});

  UserImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image =AppConstants.Image_URL+ json['image'];
    userId = int.parse(json['user_id'].toString());
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['user_id'] = userId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}