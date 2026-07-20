import 'package:ahlachat/models/Usermodel.dart';


class roomkarismamodel {
  int? userId;
  String? karisma;
  usermodel? user;

  roomkarismamodel({this.userId, this.karisma, this.user});

  roomkarismamodel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    karisma = json['karisma'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['karisma'] = karisma;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class Roomkarismamodel {
  List<roomkarismamodel>? weeklysupporter;
  List<roomkarismamodel>? monthlysupporter;
  List<roomkarismamodel>? dailysupporter;

  Roomkarismamodel(
      {this.weeklysupporter, this.monthlysupporter, this.dailysupporter});

  Roomkarismamodel.fromJson(Map<String, dynamic> json) {
    if (json['weeklysupporter'] != null) {
      weeklysupporter = <roomkarismamodel>[];
      json['weeklysupporter'].forEach((v) {
        weeklysupporter!.add(roomkarismamodel.fromJson(v));
      });
    }
    if (json['Monthlysupporter'] != null) {
      monthlysupporter = <roomkarismamodel>[];
      json['Monthlysupporter'].forEach((v) {
        monthlysupporter!.add(roomkarismamodel.fromJson(v));
      });
    }
    if (json['dailysupporter'] != null) {
      dailysupporter = <roomkarismamodel>[];
      json['dailysupporter'].forEach((v) {
        dailysupporter!.add(roomkarismamodel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (weeklysupporter != null) {
      data['weeklysupporter'] =
          weeklysupporter!.map((v) => v.toJson()).toList();
    }
    if (monthlysupporter != null) {
      data['Monthlysupporter'] =
          monthlysupporter!.map((v) => v.toJson()).toList();
    }
    if (dailysupporter != null) {
      data['dailysupporter'] =
          dailysupporter!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
