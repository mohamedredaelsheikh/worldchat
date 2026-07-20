
import 'package:ahlachat/util/app_constants.dart';

class usergifts {
  int? id;
  String? userId;
  String? urlsvga;
  String? svga;
  String? tittle;
  String? message;
  String? image;
  String? kind;
  String? createdAt;
  String? updatedAt;
  usergifts(
      {this.id,
        this.userId,
        this.svga,
        this.tittle,
        this.message,
        this.image,
        this.kind,
        this.createdAt,this.urlsvga,
        this.updatedAt});

  usergifts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    svga = json['svga'];
    urlsvga=AppConstants.Image_URL+ json['svga'];
    tittle = json['title'];
    message = json['message'];
    image =AppConstants.Image_URL+ json['image'];
    kind = json['kind'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['svga'] = svga;

    data['tittle'] = tittle;
    data['message'] = message;
    data['image'] = image;
    data['kind'] = kind;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}