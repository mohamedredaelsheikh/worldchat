

import 'package:ahlachat/models/Usermodel.dart';

import '../util/app_constants.dart';

class Agencymodel {
  int? id;
  String? name ;
  int? userId;
  var description ;
  String? password ;
  int? coins;
  int? agencyKind;
  var model ;
  var image ;
  String? appid='';
  var userNumber;
  int? ban;
  String? createdAt;
  String? updatedAt;
  usermodel? user;

  Agencymodel(
      {this.id,
        this.name,
        this.userId,

        this.description,
        this.password,
        this.coins,
        this.agencyKind,
         this.model,
         this.image,
        this.userNumber,
        this.ban,
        this.createdAt,
        this.updatedAt,
        this.user,
        this.appid
      });

  Agencymodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userId = json['user_id'];
    appid= json['appid'];
     description = json['description'];
    password = json['password'];
     coins = json['coins'];
     agencyKind = json['AgencyKind'];
       model = json['model']==null?null:AppConstants.Image_URL+ json['model'];
       image =json['image']==null?null:AppConstants.Image_URL+ json['image'];
       userNumber = json['user_number'];
      ban = json['ban'];
      createdAt = json['created_at'];
     updatedAt = json['updated_at'];
     user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['user_id'] = userId;
    data['appid'] = appid;
   data['description'] = description;
    data['password'] = password;
    data['coins'] = coins;
    data['AgencyKind'] = agencyKind;
    data['model'] = model;
    // data['image'] = this.image;

     data['user_number'] = userNumber;
    data['ban'] = ban;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}