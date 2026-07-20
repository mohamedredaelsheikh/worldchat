

import 'package:ahlachat/util/app_constants.dart';

class VipModel {
  int? id;
  String? gif;
  String? name;
  int? status;
  String? vipicon;
  var backgroundimage ;
  String? urlentry;
  String? urlframe;
  String?  entry;
  String?  frame;
  String? bubbles;
  int? level;
  int? specialID;
  var profileEntry;
  var urlprofileEntry;
  var coloredMessage;
  var hidden;
  String? createdAt;
  String? updatedAt;
  int? cost;
  int? day;
  VipModel(
      {this.id,
        this.gif,
        this.name,
        this.status,
        this.vipicon,
        this.backgroundimage,
        this.urlentry,
        this.urlframe,
        this.level,
        this.specialID,
        this.profileEntry,
        this.coloredMessage,
        this.hidden,
        this.cost,
        this.day,
        this.createdAt,
        this.updatedAt,
        this.urlprofileEntry
      });

  VipModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gif = AppConstants.Image_URL+json['gif'];
    name = json['name'];
    status = json['status'];
    vipicon = AppConstants.Image_URL +json['vipicon'];

    backgroundimage = json['background_image']==null?null: AppConstants.Image_URL +json['background_image'];

    urlentry =AppConstants.Image_URL + json['Entry'];
    urlframe =AppConstants.Image_URL + json['Frame'];
    entry = json['Entry'];
    frame = json['Frame'];

    level = json['Level'];
    cost = json['cost'];
    specialID = json['SpecialID'];
    profileEntry = json['ProfileEntry']==null?null:AppConstants.Image_URL+json['ProfileEntry'];
    bubbles=json['ProfileEntry'];
    coloredMessage = json['ColoredMessage'];
    hidden = json['Hidden'];

    day=json['days'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Gif'] = gif;
    data['name'] = name;
    data['status'] = status;
    data['vipicon'] = vipicon;
    data['Entry'] = urlentry;
    data['Frame'] = urlframe;
    data['Level'] = level;
    data['background_image'] =backgroundimage;
    data['SpecialID'] = specialID;
    data['ProfileEntry'] = profileEntry;
    data['ColoredMessage'] = coloredMessage;
    data['Hidden'] = hidden;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}