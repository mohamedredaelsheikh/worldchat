

import '../util/app_constants.dart';

class GamesModel {
  int? id;
  String? name;
  int? status;
  int? oriantation;
  int? NumberPersons;
  String? path;
  String? image;
  GamesModel(
      {this.id,
        this.name,
        this.status,
        this.oriantation,
        this.path,
        this.image,
        this.NumberPersons,
        });

  GamesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    oriantation = json['oriantation'];
    path = json['path'];
    NumberPersons=json['usersnumber'];
    image =AppConstants.Image_URL+ json['image'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['oriantation'] = oriantation;
    data['path'] = path;
    data['image'] = image;
    data['usersnumber'] = NumberPersons;


    return data;
  }
}