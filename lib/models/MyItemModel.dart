
import 'package:ahlachat/models/ShopModel.dart';

class Salesmodel {
  int? id;
  String? name;
  int? status;
  String? createdAt;
  String? updatedAt;
  List<Sales>? sales;

  Salesmodel(
      {this.id,
        this.name,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.sales});

  Salesmodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['sales'] != null) {
      sales = <Sales>[];
      json['sales'].forEach((v) {
        sales!.add(Sales.fromJson(v));
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
    if (sales != null) {
      data['sales'] = sales!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sales {
  int? id;
  int? itemId;
  int? userId;
  int? status;
  int? day;
  int? price;
  int? categoryId;
  String? createdAt;
  String? updatedAt;
  Items? item;

  Sales(
      {this.id,
        this.itemId,
        this.userId,
        this.status,
        this.day,
        this.price,
        this.categoryId,
        this.createdAt,
        this.updatedAt,
        this.item});

  Sales.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemId = json['item_id'];
    userId = json['user_id'];
    status = json['status'];
    day = json['day'];
    price = json['price'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    item = json['item'] != null ? Items.fromJson(json['item']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['item_id'] = itemId;
    data['user_id'] = userId;
    data['status'] = status;
    data['day'] = day;
    data['price'] = price;
    data['category_id'] = categoryId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (item != null) {
      data['item'] = item!.toJson();
    }
    return data;
  }
}

