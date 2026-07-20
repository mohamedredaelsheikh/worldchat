class FlagModel {
  int? id;
  String? name;
  String? flag;

  FlagModel({this.id, this.name, this.flag});

  FlagModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['flag'] = flag;
    return data;
  }
}