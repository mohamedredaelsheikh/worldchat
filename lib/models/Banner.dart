

import 'package:ahlachat/models/subbannerModel.dart';

import '../util/app_constants.dart';

class Bannerss {
  String? image;
  var Secondimage;
  String? roomId;
  String? updatedAt;
  String? createdAt;
  int? id;
  List<SubBannerModel> ? SubBanner;

  Bannerss({this.image,this.Secondimage, this.roomId, this.updatedAt, this.createdAt, this.id,this.SubBanner});

  Bannerss.fromJson(Map<String, dynamic> json) {
    image =AppConstants.Image_URL+json['image'];
    Secondimage =json['Secondimage']==null?null:AppConstants.Image_URL+json['Secondimage'];
    roomId = json['Room_id'].toString();
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];

    if (json['subbanner'] != null) {
      SubBanner = <SubBannerModel>[];
      json['subbanner'].forEach((v) {
        SubBanner!.add(SubBannerModel.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['Secondimage'] = Secondimage;

    data['Room_id'] = roomId;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    if (SubBanner != null) {
      data['subbanner'] = SubBanner!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

