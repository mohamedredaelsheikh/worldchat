

import 'package:ahlachat/models/ChairModel.dart';
import 'package:ahlachat/models/Chatroom.dart';
import 'package:ahlachat/models/JoinRoomModel.dart';
import 'package:ahlachat/models/SupervisorsModel.dart';
import 'package:ahlachat/models/Usermodel.dart';

import '../util/app_constants.dart';

class RoomModel {
  int? id;
  String? name;
  String? image;
  String? nothostedimage;
  String?animateimage;
  String? frame;
  String? password;
  int? userNumber ;
  int? adminId;
  int? SecondKing;
  var  importance;
  int? locked;
  int? state;
  String?Category;
  String? createdAt;
  String? updatedAt;
  String?city;
  List<joinRoom>? joinRooms;
  List<Supervisors>? supervisor =[];
  List<String>? supervisorsId =[];
  usermodel? admin;
  List<Chairs>? chairs;
  List<Chatroom>? chatroom;
  String ? Token;
  String ? agoratoken;
  String ? RoomAds;
  String?RoomID;
  int ?Karisma;
  int ?FollowRoom;

  RoomModel(
      {this.id,
        this.name,
        this.RoomID,
        this.image,
        this.frame,
        this.password,
        this.userNumber,
        this.adminId,
        this.locked,
        this.state,
        this.city,
        this.Category,
        this.createdAt,
        this.updatedAt,
        this.joinRooms,
        this.supervisor,
        this.supervisorsId,
        this.animateimage,
        this.admin,
        this.chairs,
        this.chatroom,
        this.Token,
        this.importance,
        this.nothostedimage,
        this.agoratoken,
        this.RoomAds,
        this.Karisma,
        this.SecondKing,
        this.FollowRoom
      });

  RoomModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = AppConstants.Image_URL+json['image'];
    animateimage = AppConstants.Image_URL+json['animateimage'];
    frame = json['frame'];
    SecondKing= json['SecondKing'];
    password = json['password'];
    FollowRoom= json['FollowRoom'];
    userNumber = json['user_number'];
    adminId = json['admin_id'];
    locked = json['Locked'];
    state = json['state'];
    Category=json['Category'];
    city=json['city'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    nothostedimage=json['animateimage'];
    Token=json['Token'];
    RoomID=json['RoomID'];
    agoratoken=json['agoratoken'];
    RoomAds=json['RoomAds'];
    importance=json['importance'];
    Karisma=json['Karisma'];
    if (json['join_room'] != null) {
      joinRooms = <joinRoom>[];
      json['join_room'].forEach((v) {
        joinRooms?.add(joinRoom.fromJson(v));
      });
    }

    if (json['supervisors'] != null) {
      supervisor = <Supervisors>[];
      json['supervisors'].forEach((v) {
        supervisor?.add(Supervisors.fromJson(v));
        supervisorsId?.add(v['user_id']);
      });
    }


    admin = json['admin'] != null ? usermodel.fromJson(json['admin']) : null;
    if (json['chairs'] != null) {
      chairs = <Chairs>[];
      json['chairs'].forEach((v) {
        chairs!.add(Chairs.fromJson(v));
      });
    }
    if (json['chatroom'] != null) {
      chatroom = <Chatroom>[];
      json['chatroom'].forEach((v) {
        chatroom!.add(Chatroom.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['animateimage'] = animateimage;
    data['frame'] = frame;
    data['Token']=Token;
    data['password'] = password;
    data['RoomID'] = RoomID;
    data['user_number'] = userNumber;
    data['admin_id'] = adminId;
    data['Locked'] = locked;
    data['state'] = state;
    data['FollowRoom']=FollowRoom;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['Category']=Category;
    data['city']=city;
    data['importance']=importance;
    data['agoratoken']=agoratoken;
    data['RoomAds']=RoomAds;
    data['Karisma']=Karisma;
    data['SecondKing']=SecondKing;
    if (joinRooms != null) {
      data['join_room'] = joinRooms!.map((v) => v.toJson()).toList();
    }
    if (supervisor != null) {
      data['supervisors'] = supervisor!.map((v) => v.toJson()).toList();
    }
    if (admin != null) {
      data['admin'] = admin!.toJson();
    }
    if (chairs != null) {
      data['chairs'] = chairs!.map((v) => v.toJson()).toList();
    }
    if (chatroom != null) {
      data['chatroom'] = chatroom!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}