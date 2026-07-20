
import 'package:ahlachat/util/app_constants.dart';

class Gifts {
  int? id;
  int? userId;
  int? giftId;
  int? quantity;
  int? roomId;
  String? createdAt;
  String? updatedAt;
  Gift? gift;

  Gifts(
      {this.id,
        this.userId,
        this.giftId,
        this.quantity,
        this.roomId,
        this.createdAt,
        this.updatedAt,
        this.gift});

  Gifts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    giftId = json['gift_id'];
    quantity = json['quantity'];
    roomId = json['room_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    gift = json['gift'] != null ? Gift.fromJson(json['gift']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['gift_id'] = giftId;
    data['quantity'] = quantity;
    data['room_id'] = roomId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (gift != null) {
      data['gift'] = gift!.toJson();
    }
    return data;
  }
}

class Gift {
  int? id;
  String? name;
  String? image;
  int? categoryId;
  int? price;
  int?luckypackage;
  String? state;
  String? createdAt;
  String? updatedAt;
  String? svga;

  Gift(
      {this.id,this.luckypackage,
        this.name,
        this.image,
        this.categoryId,
        this.price,
        this.state,
        this.createdAt,
        this.updatedAt,
        this.svga});

  Gift.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image =  AppConstants.Image_URL+json['image'];
    categoryId = json['category_id'];
    price = json['price'];
    state = json['state'];
    luckypackage=json['luckypackage'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    svga = json['svga'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['category_id'] = categoryId;
    data['price'] = price;
    data['state'] = state;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['luckypackage']=luckypackage;
    data['svga'] = svga;
    return data;
  }
}