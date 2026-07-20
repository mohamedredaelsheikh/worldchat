import 'package:ahlachat/models/Usermodel.dart';
import 'package:ahlachat/util/app_constants.dart';

class RelationModel {
  int? id;
  int? senderId;
  int? relationId;
  int? userId;
  int? karisma;
  int? status;
  String? createdAt;
  String? updatedAt;
  usermodel? user;
  usermodel? anotheruser;
  item?items;
  var Leaved;

  RelationModel(
      {this.id,
        this.senderId,
        this.relationId,
        this.Leaved,
        this.userId,
        this.karisma,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.user,
        this.items,
        this.anotheruser});

  RelationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    senderId = json['sender_id'];
    relationId = json['Relation_id'];
    userId = json['user_id'];
    karisma = json['karisma'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    Leaved= json['Leaved'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
    items=json['item'] != null ? item.fromJson(json['item']) : null;
    anotheruser = json['anotheruser'] != null
        ? usermodel.fromJson(json['anotheruser'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sender_id'] = senderId;
    data['Relation_id'] = relationId;
    data['user_id'] = userId;
    data['karisma'] = karisma;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['Leaved']=Leaved;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (anotheruser != null) {
      data['anotheruser'] = anotheruser!.toJson();
    }
    return data;
  }
}
class User {
  int? id;
  String? name;
  String?image;

  User({this.id, this.name,this.image});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image =AppConstants.Image_URL+ json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image']=image;
    return data;
  }
}

class item {
  int? id;
  String? name;
  String? image;

  item({this.id, this.name});

  item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image=AppConstants.Image_URL+ json['svggift'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image']=image;
    return data;
  }
}
