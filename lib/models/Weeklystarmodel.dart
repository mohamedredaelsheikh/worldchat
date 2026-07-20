import 'package:ahlachat/models/Leaderboardusermodel.dart';
import 'package:ahlachat/models/gifts.dart';

class WeeklyStarModel {
  int? id;
  String? starttime;
  String? endtime;
  String? image;
  String? status;
  String? createdAt;
  String? updatedAt;
  List<Leaderboardusermodel>? supporters;
  List<Leaderboardusermodel>? supporteds;
  List<Gift>? gifts;

  WeeklyStarModel(
      {this.id,
        this.starttime,
        this.endtime,
        this.image,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.supporters,
        this.supporteds,
        this.gifts});

  WeeklyStarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    starttime = json['Starttime'];
    endtime = json['Endtime'];
    image = json['image'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['supporters'] != null) {
      supporters = <Leaderboardusermodel>[];
      json['supporters'].forEach((v) {
        supporters!.add(Leaderboardusermodel.fromJson(v));
      });
    }
    if (json['supporteds'] != null) {
      supporteds = <Leaderboardusermodel>[];
      json['supporteds'].forEach((v) {
        supporteds!.add(Leaderboardusermodel.fromJson(v));
      });
    }
    if (json['gifts'] != null) {
      gifts = <Gift>[];
      json['gifts'].forEach((v) {
        gifts!.add(Gift.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Starttime'] = starttime;
    data['Endtime'] = endtime;
    data['image'] = image;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (supporters != null) {
      data['supporters'] = supporters!.map((v) => v.toJson()).toList();
    }
    if (supporteds != null) {
      data['supporteds'] = supporteds!.map((v) => v.toJson()).toList();
    }
    if (gifts != null) {
      data['gifts'] = gifts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
