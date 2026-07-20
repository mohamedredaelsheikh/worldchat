class usermusic {
  int? id;
  int? userId;
  String? name;
  String? url;
  String? createdAt;
  String? updatedAt;

  usermusic(
      {this.id,
        this.userId,
        this.name,
        this.url,
        this.createdAt,
        this.updatedAt});

  usermusic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = int.parse(json['user_id'].toString());
    name = json['name'];
    url = json['url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['name'] = name;
    data['url'] = url;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}