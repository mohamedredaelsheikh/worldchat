import 'package:ahlachat/models/MessageModel.dart';
import 'package:ahlachat/models/Usermodel.dart';


class InboxRoomModel {
  int? id;
  String? userId;
  String? senderId;
  String? lastMessage;
  int? numberUnread;
  String? createdAt;
  String? updatedAt;
  List<Message>? message;
  usermodel? user;
  usermodel? sender;

  InboxRoomModel(
      {this.id,
        this.userId,
        this.senderId,
        this.lastMessage,
        this.numberUnread,
        this.createdAt,
        this.updatedAt,
        this.message,
        this.user,
        this.sender});

  InboxRoomModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    senderId = json['sender_id'];
    lastMessage = json['last_message'];
    numberUnread = json['number_unread'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['message'] != null) {
      message = <Message>[];
      json['message'].forEach((v) {
        message!.add(Message.fromJson(v));
      });
    }
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
    sender =
    json['sender'] != null ? usermodel.fromJson(json['sender']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['sender_id'] = senderId;
    data['last_message'] = lastMessage;
    data['number_unread'] = numberUnread;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (message != null) {
      data['message'] = message!.map((v) => v.toJson()).toList();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (sender != null) {
      data['sender'] = sender!.toJson();
    }
    return data;
  }
}
