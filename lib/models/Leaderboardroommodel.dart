import 'package:ahlachat/models/RoomModel.dart';

class LeaderboardRoommodel {
  String? coins;
  int? roomId;
  RoomModel? room;

  LeaderboardRoommodel({this.coins, this.roomId, this.room});

  LeaderboardRoommodel.fromJson(Map<String, dynamic> json) {
    coins = json['coins'];
    roomId = json['room_id'];
    room = json['room'] != null ? RoomModel.fromJson(json['room']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coins'] = coins;
    data['room_id'] = roomId;
    if (room != null) {
      data['room'] = room!.toJson();
    }
    return data;
  }
}
class ListoflEaderboardcategoryRoom {
  List<LeaderboardRoommodel>? weeklysupporter;
  List<LeaderboardRoommodel>? monthlysupporter;
  List<LeaderboardRoommodel>? dailysupporter;

  ListoflEaderboardcategoryRoom(
      {this.weeklysupporter, this.monthlysupporter, this.dailysupporter});

  ListoflEaderboardcategoryRoom.fromJson(Map<String, dynamic> json) {
    if (json['weeklysupporter'] != null) {
      weeklysupporter = <LeaderboardRoommodel>[];
      json['weeklysupporter'].forEach((v) {
        weeklysupporter!.add(LeaderboardRoommodel.fromJson(v));
      });
    }
    if (json['Monthlysupporter'] != null) {
      monthlysupporter = <LeaderboardRoommodel>[];
      json['Monthlysupporter'].forEach((v) {
        monthlysupporter!.add(LeaderboardRoommodel.fromJson(v));
      });
    }
    if (json['dailysupporter'] != null) {
      dailysupporter = <LeaderboardRoommodel>[];
      json['dailysupporter'].forEach((v) {
        dailysupporter!.add(LeaderboardRoommodel.fromJson(v));
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