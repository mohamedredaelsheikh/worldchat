
import '../util/app_constants.dart';

class Shop {
  int? id;
  String? name;
  int? status;
  String? createdAt;
  String? updatedAt;
  List<Items>? items;

  Shop(
      {this.id,
        this.name,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.items});

  Shop.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? id;
  String? name;
  String? svggift;
  String? imagegift;
  String? svga;
  String?image;
  int? shopcategoryId;
  int? price;
  String? state;
  int? kind;
  String? createdAt;
  String? updatedAt;
  int?important;

  Items(
      {this.id,
        this.name,
        this.svggift,
        this.imagegift,
        this.shopcategoryId,
        this.price,
        this.state,
        this.createdAt,
        this.updatedAt,
      this.kind,this.svga,this.important
      });

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    svggift = AppConstants.Image_URL+json['svggift'];
    svga=json['svggift'];
    imagegift =AppConstants.Image_URL+ json['imagegift'];
    image = json['imagegift'];
    shopcategoryId = json['shopcategory_id'];
    price = json['price'];
    state = json['state'];
    kind=json['kind'];
    important=json['important'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['svggift'] = svggift;
    data['imagegift'] = imagegift;
    data['shopcategory_id'] = shopcategoryId;
    data['price'] = price;
    data['state'] = state;
    data['kind']=kind;
   data['important']=important;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}