import 'package:ahlachat/models/Usermodel.dart';

class guessgamemodel {
  int? id;
  var senderId;
  var senderGueess;
  var acceptId;
  usermodel? Sender;
  usermodel? Reciver;
  var acceptGueess;
  String? coins;
  int? status;

  var winner;
  String? createdAt;
  String? updatedAt;

  guessgamemodel(
      {this.id,
        this.senderId,
        this.senderGueess,
        this.acceptId,
        this.acceptGueess,
        this.coins,
        this.status,
        this.winner,
        this.createdAt,
        this.updatedAt});

  guessgamemodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    senderId = json['Sender_id'];
    senderGueess = json['Sender_gueess'];
    acceptId = json['Accept_id'];
    acceptGueess = json['Accept_gueess'];
    coins = json['Coins'].toString();
    status = json['status'];
    winner=json['winner'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    Sender = json['user'] != null ? usermodel.fromJson(json['user']) : null;
    Reciver= json['Reciver'] != null ? usermodel.fromJson(json['Reciver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Sender_id'] = senderId;
    data['Sender_gueess'] = senderGueess;
    data['Accept_id'] = acceptId;
    data['Accept_gueess'] = acceptGueess;
    data['Coins'] = coins;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['winner'] = winner;
    if (Sender != null) {
      data['user'] = Sender!.toJson();
    }
    if (Reciver != null) {
      data['Reciver'] = Reciver!.toJson();
    }
    return data;
  }
}