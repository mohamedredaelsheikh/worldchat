
class Message {
  int? id;
  String? message;
  int? deletestate;
  int? userId;
  int? inboxroomId;
  int? senderId;

  int?status;
  String? createdAt;
  String? updatedAt;

  Message(
      {this.id,
        this.message,
        this.deletestate,
        this.userId,
        this.inboxroomId,
        this.senderId,
        this.status,
        this.createdAt,
        this.updatedAt});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    message = json['message'];
    deletestate = json['deletestate'];
    userId =int.parse(json['user_id'].toString()) ;
    inboxroomId = json['Inboxroom_id'];
    senderId =int.parse(json['sender_id'].toString()) ;
    status =int.parse(json['status'].toString()) ;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['message'] = message;
    data['deletestate'] = deletestate;
    data['user_id'] = userId;
    data['Inboxroom_id'] = inboxroomId;
    data['sender_id'] = senderId;
    data['created_at'] = createdAt;
    data['status']=status;
    data['updated_at'] = updatedAt;
    return data;
  }
}