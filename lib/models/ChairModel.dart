import 'package:ahlachat/models/Usermodel.dart';


class Chairs {
  int? id;
  String? userId;
  String? roomId;
  String? chairId;
  int? mute;
  String? createdAt;
  String? updatedAt;
  usermodel? user; 
  int ?Lock;
  int? Karisma;
  int? adminleaved;


  Chairs({this.id,
    this.userId,
    this.roomId,
    this.chairId,
    this.createdAt,
    this.adminleaved,
    this.updatedAt,
    this.user,
    this.mute,
    this.Lock,
    this.Karisma
  });

  Chairs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    roomId = json['room_id'];
    chairId = json['chair_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
    mute=json['mute'];
    Lock=json['Lock'];
    Karisma=json['Karisma'];
    adminleaved=json['adminleaved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['room_id'] = roomId;
    data['chair_id'] = chairId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['Lock'] = Lock;
    data['mute'] = mute;
    data['adminleaved']= adminleaved;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['Karisma'] = Karisma;
    return data;
  }
}