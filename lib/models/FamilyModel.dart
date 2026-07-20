import 'package:ahlachat/models/RoomModel.dart';
import 'package:ahlachat/models/Usermodel.dart';
import 'package:ahlachat/util/app_constants.dart';
class FamilyModel {
  int? id;
  String? name;
  String? familyid;
  var firstadmin;
  var secondadmin;
  int? karisma;
  int?   GlopalKarisma;
  String? describtion;
  String? image;
  var model;
  int? userId;
  int? nubmers;
  int? status;
  String? createdAt;
  String? updatedAt;
  List<TopStar>? topStar;
  List<RoomModel>? rooms;

  FamilyModel(
      {this.id,
        this.name,
        this.familyid,
        this.firstadmin,
        this.secondadmin,
        this.karisma,
        this.GlopalKarisma,
        this.describtion,
        this.image,
        this.model,
        this.userId,
        this.nubmers,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.topStar,
        this.rooms});

  FamilyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    familyid = json['Familyid'];
    firstadmin = json['firstadmin'];
    secondadmin = json['secondadmin'];
    karisma = json['Karisma'];
    GlopalKarisma = json['GlopalKarisma'];
    describtion = json['describtion'];
    image = AppConstants.Image_URL+json['image'];
    model =json['model']==null?null: AppConstants.Image_URL+json['model'];
    userId = json['user_id'];
    nubmers = json['nubmers'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['TopStar'] != null) {
      topStar = <TopStar>[];
      json['TopStar'].forEach((v) {
        topStar!.add(TopStar.fromJson(v));
      });
    }
    if (json['rooms'] != null) {
      rooms = <RoomModel>[];
      json['rooms'].forEach((v) {
        rooms!.add(RoomModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['Familyid'] = familyid;
    data['firstadmin'] = firstadmin;
    data['secondadmin'] = secondadmin;
    data['Karisma'] = karisma;
    data['GlopalKarisma'] = GlopalKarisma;

    data['describtion'] = describtion;
    data['image'] = image;
    data['model'] = model;
    data['user_id'] = userId;
    data['nubmers'] = nubmers;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (topStar != null) {
      data['TopStar'] = topStar!.map((v) => v.toJson()).toList();
    }
    if (rooms != null) {
      data['rooms'] = rooms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class TopStar {
  int? userId;
  String? coins;
  usermodel? user;

  TopStar({this.userId, this.coins, this.user});

  TopStar.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    coins = json['coins'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['coins'] = coins;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}