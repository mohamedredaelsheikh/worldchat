import 'package:ahlachat/models/Usermodel.dart';

class KarismaCollectModel {
  int? senderId;
  String? karisma;
  usermodel? user;

  KarismaCollectModel({this.senderId, this.karisma, this.user});

  KarismaCollectModel.fromJson(Map<String, dynamic> json) {
    senderId = json['sender_id'];
    karisma = json['karisma'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sender_id'] = senderId;
    data['karisma'] = karisma;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}