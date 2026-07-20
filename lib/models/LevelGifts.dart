
import '../util/app_constants.dart';

class UserLevelGifts {
  int? id;
  String? userId;
  String? svga;
  String? tittle;
  String? message;
  String? image;
  int? kind;
  String ?svgaurl;
  String? createdAt;
  String? updatedAt;

  UserLevelGifts(
      {this.id,
        this.userId,
        this.svga,
        this.tittle,
        this.message,
        this.image,
        this.kind,
        this.createdAt,
        this.updatedAt});

  UserLevelGifts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    svgaurl=json['svga']==null?'':AppConstants.Image_URL+json['svga'];
    svga=json['svga'] ?? '';
    tittle = json['tittle'];
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
    data['svga'] = svgaurl;
    data['tittle'] = tittle;
    data['message'] = message;
    data['image'] = image;
    data['kind'] = kind;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;

    return data;
  }
}