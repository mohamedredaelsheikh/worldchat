import 'package:ahlachat/models/AgencyModel.dart';
import 'package:ahlachat/models/FamilyModel.dart';
import 'package:ahlachat/models/Usermodel.dart';

class Leaderboardusermodel {
  String? coins;
  int? userId;
  usermodel? user;

  Leaderboardusermodel({this.coins, this.userId, this.user});

  Leaderboardusermodel.fromJson(Map<String, dynamic> json) {
    coins = json['coins'];
    userId = json['user_id'];
    user = json['user'] != null ? usermodel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coins'] = coins;
    data['user_id'] = userId;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class LeaderboardFamilymodel {
  String? coins;
  int? userId;
  FamilyModel? Family;

  LeaderboardFamilymodel({this.coins, this.userId, this.Family});

  LeaderboardFamilymodel.fromJson(Map<String, dynamic> json) {
    coins = json['coins'];
    userId = json['user_id'];
    Family = json['family'] != null ? FamilyModel.fromJson(json['family']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coins'] = coins;
    data['user_id'] = userId;
    if (Family != null) {
      data['family'] = Family!.toJson();
    }
    return data;
  }
}

class LeaderboardAgencymodel {
  String? coins;
  int? agencyid;
  Agencymodel? Agency;

  LeaderboardAgencymodel({this.coins, this.agencyid, this.Agency});

  LeaderboardAgencymodel.fromJson(Map<String, dynamic> json) {
    coins = json['coins'];
    agencyid = json['agency_id'];
    Agency = json['agency'] != null ? Agencymodel.fromJson(json['agency']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coins'] = coins;
    data['agency_id'] = agencyid;
    if (Agency != null) {
      data['agency'] = Agency!.toJson();
    }
    return data;
  }
}

class AgencyLeaderBoard {
  List<LeaderboardAgencymodel>? supporter;
  List<LeaderboardAgencymodel>? supported;

  AgencyLeaderBoard({this.supporter, this.supported});

  AgencyLeaderBoard.fromJson(Map<String, dynamic> json) {
    if (json['Supporter'] != null) {
      supporter = <LeaderboardAgencymodel>[];
      json['Supporter'].forEach((v) {
        supporter!.add(LeaderboardAgencymodel.fromJson(v));
      });
    }
    if (json['Supported'] != null) {
      supported = <LeaderboardAgencymodel>[];
      json['Supported'].forEach((v) {
        supported!.add(LeaderboardAgencymodel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (supporter != null) {
      data['Supporter'] = supporter!.map((v) => v.toJson()).toList();
    }
    if (supported != null) {
      data['Supported'] = supported!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class ListoflEaderboardcategory {
  List<Leaderboardusermodel>? weeklysupporter;
  List<Leaderboardusermodel>? monthlysupporter;
  List<Leaderboardusermodel>? dailysupporter;

  ListoflEaderboardcategory(
      {this.weeklysupporter, this.monthlysupporter, this.dailysupporter});

  ListoflEaderboardcategory.fromJson(Map<String, dynamic> json) {
    if (json['weeklysupporter'] != null) {
      weeklysupporter = <Leaderboardusermodel>[];
      json['weeklysupporter'].forEach((v) {
        weeklysupporter!.add(Leaderboardusermodel.fromJson(v));
      });
    }
    if (json['Monthlysupporter'] != null) {
      monthlysupporter = <Leaderboardusermodel>[];
      json['Monthlysupporter'].forEach((v) {
        monthlysupporter!.add(Leaderboardusermodel.fromJson(v));
      });
    }
    if (json['dailysupporter'] != null) {
      dailysupporter = <Leaderboardusermodel>[];
      json['dailysupporter'].forEach((v) {
        dailysupporter!.add(Leaderboardusermodel.fromJson(v));
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
class ListoflEaderboardFamilycategory {
  List<LeaderboardFamilymodel>? weeklysupporter;
  List<LeaderboardFamilymodel>? monthlysupporter;
  List<LeaderboardFamilymodel>? dailysupporter;

  ListoflEaderboardFamilycategory(
      {this.weeklysupporter, this.monthlysupporter, this.dailysupporter});

  ListoflEaderboardFamilycategory.fromJson(Map<String, dynamic> json) {
    if (json['weeklyFamily'] != null) {
      weeklysupporter = <LeaderboardFamilymodel>[];
      json['weeklyFamily'].forEach((v) {
        weeklysupporter!.add(LeaderboardFamilymodel.fromJson(v));
      });
    }
    if (json['MonthlyFamily'] != null) {
      monthlysupporter = <LeaderboardFamilymodel>[];
      json['MonthlyFamily'].forEach((v) {
        monthlysupporter!.add(LeaderboardFamilymodel.fromJson(v));
      });
    }
    if (json['dailyFamily'] != null) {
      dailysupporter = <LeaderboardFamilymodel>[];
      json['dailyFamily'].forEach((v) {
        dailysupporter!.add(LeaderboardFamilymodel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (weeklysupporter != null) {
      data['weeklyFamily'] =
          weeklysupporter!.map((v) => v.toJson()).toList();
    }
    if (monthlysupporter != null) {
      data['Monthlysupporter'] =
          monthlysupporter!.map((v) => v.toJson()).toList();
    }
    if (dailysupporter != null) {
      data['dailyFamily'] =
          dailysupporter!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
