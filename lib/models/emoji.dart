import 'package:ahlachat/util/app_constants.dart';


class emojimodel {
  int? id;
  String? emojiSvga;
  String? emojiName;
  String? image;
  emojimodel(
      {this.id,
        this.emojiSvga,
        this.emojiName,
   });

  emojimodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    emojiSvga = AppConstants.Image_URL+json['emoji_svga'];
    emojiName = json['emoji_Name'];
    image=AppConstants.Image_URL+ json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['emoji_svga'] = emojiSvga;
    data['emoji_Name'] = emojiName;
    data['image'] = image;
    return data;
  }
}