
import '../util/app_constants.dart';

class LevelFrame {
  int? id;
  String? image;
  String? svga;
  String? levelStart;
  String? levelEnd;
  String? createdAt;
  String? updatedAt;

  LevelFrame(
      {this.id,
        this.image,
        this.svga,
        this.levelStart,
        this.levelEnd,
        this.createdAt,
        this.updatedAt});

  LevelFrame.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = AppConstants.Image_URL+json['image'];
    svga =AppConstants.Image_URL+ json['svga'];
    levelStart = json['level_start'];
    levelEnd = json['level_end'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['svga'] = svga;
    data['level_start'] = levelStart;
    data['level_end'] = levelEnd;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}