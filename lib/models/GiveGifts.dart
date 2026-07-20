import 'dart:convert';

import 'package:ahlachat/util/app_constants.dart';


class givegifts {
  int? id;
  String? name;
  String? image;
  int? categoryId;
  int? price;
  String? state;
  String? createdAt;
  String? updatedAt;
  List  ListUser=[];
  String? quantity;
  String?  svga;
  var Sound;

  givegifts(
      {this.id,
        this.name,
        this.image,
        this.categoryId,
        this.price,
        this.state,
        this.createdAt,
        this.Sound,
        this.updatedAt,
        required this.ListUser,
        this.quantity,
        this.svga});
  givegifts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = AppConstants.Image_URL+json['image'];
    categoryId = json['category_id'];
    price = json['price'];
    state = json['state'];
    Sound=json['sound']==null?null:AppConstants.Image_URL+json['sound'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    ListUser =jsonDecode(json['Listuser']) ;
    quantity = json['quantity'];
    svga = AppConstants.Image_URL+json['svga'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['sound']=Sound;
    data['category_id'] = categoryId;
    data['price'] = price;
    data['state'] = state;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['Listuser'] = ListUser;
    data['quantity'] = quantity;
    data['svga']=svga;
    return data;
  }
}