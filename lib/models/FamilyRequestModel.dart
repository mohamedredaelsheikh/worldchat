class FamilyRequestModel {
  int? userId;
  int? familyId;
  String? updatedAt;
  String? createdAt;
  int? id;

  FamilyRequestModel(
      {this.userId, this.familyId, this.updatedAt, this.createdAt, this.id});

  FamilyRequestModel.fromJson(Map<String, dynamic> json) {
    userId = int.parse(json['user_id'].toString());
    familyId = int.parse(json['Family_id'].toString());
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['Family_id'] = familyId;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    return data;
  }
}
