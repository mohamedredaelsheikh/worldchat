import 'package:ahlachat/util/app_constants.dart';

class SubBannerModel {
  int? id;
  String? bannerId;
  String? status;
  String? image;
  var phone;

  SubBannerModel(
      {this.id,
        this.bannerId,
        this.status,
        this.image,
        this.phone
        });

  SubBannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bannerId = json['banner_id'];
    status = json['status'];
    phone= json['phone'];
    image =AppConstants.Image_URL+ json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['banner_id'] = bannerId;
    data['status'] = status;
    data['image'] = image;

    data['phone'] = phone;
    return data;
  }
}