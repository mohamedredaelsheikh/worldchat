

import 'package:ahlachat/models/CommentsModel.dart';
import 'package:ahlachat/models/Likemodel.dart';
import 'package:ahlachat/models/Usermodel.dart';
import 'package:ahlachat/util/app_constants.dart';

class PostsModel {
  bool? status;
  String? errNum;
  String? msg;
  List<Postes>? postes;

  PostsModel({this.status, this.errNum, this.msg, this.postes});

  PostsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    if (json['Postes'] != null) {
      postes = <Postes>[];
      json['Postes'].forEach((v) {
        postes!.add(Postes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['errNum'] = errNum;
    data['msg'] = msg;
    if (postes != null) {
      data['Postes'] = postes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Postes {
  int? id;
  String? userId;
  String? content;
  int? likes;
  int? comments;
  var image ;
  String? createdAt;
  String? updatedAt;
  usermodel? user;
  List<Like>? like=[];
  List<Comments>? commentsuser=[];
  Postes(
      {this.id,
        this.userId,
        this.content,
        this.likes,
        this.comments,
        this.image ,
        this.createdAt,
        this.updatedAt,
        this.user,
        this.like,
        this.commentsuser});

  Postes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId =json['user_id'] ?? '';
    content = json['content'] ?? '';
  //  image = json['image']==null? '':AppConstants.Image_URL+json['image'];
    likes = json['likes'];
    comments = json['comments'];
    if(json['image']!=null){
      image =AppConstants.Image_URL+ json['image'];
    }else{
      image='';
    }

    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
      user = json['user'] != null ? usermodel.fromJson(json['user']) : null;

      if (json['commentsuser'] != null) {
        commentsuser = <Comments>[];
        json['commentsuser'].forEach((v) {
       commentsuser!.add(Comments.fromJson(v));
      });
    }else{
      commentsuser =[];
    }

    if (json['like'] != null) {
      like = <Like>[];
      json['like'].forEach((v) {
        like!.add(Like.fromJson(v));
      });
  }else{
      like =[];

    }

  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['content'] = content;
    data['likes'] = likes;
    data['comments'] = comments;
    data['image'] = image;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (commentsuser != null) {
      data['commentsuser'] = commentsuser!.map((v) => v.toJson()).toList();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (like != null) {
      data['like'] = like!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
