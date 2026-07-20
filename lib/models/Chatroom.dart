

import 'package:ahlachat/models/GiveGifts.dart';
import 'package:ahlachat/models/Usermodel.dart';
import 'package:ahlachat/models/guessGameModel.dart';

class Chatroom {
  String? userId;
  String? roomId;
  String? content;
  String? Coins;
  String? updatedAt;
  String? createdAt;
  int? id;
  usermodel? user;
  int? kind;
  givegifts?Gift;
  usermodel? RecevedUser;
  guessgamemodel? Guess;
  Chatroom(
      {this.userId,
        this.roomId,
        this.content,
        this.updatedAt,
        this.createdAt,
        this.id,
        this.user,
        this.kind,
        this.Gift,
        this.Coins,
        this.RecevedUser,
        this.Guess
      });

  Chatroom.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    roomId = json['room_id'];
    content = json['content'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    Coins = '0';
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
    Guess = json['Guess'] != null ? guessgamemodel.fromJson(json['Guess']) : null;
    kind=0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['room_id'] = roomId;
    data['content'] = content;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    data['Coins'] =  Coins;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (Guess != null) {
      data['Guess'] = Guess!.toJson();
    }
    return data;
  }
}