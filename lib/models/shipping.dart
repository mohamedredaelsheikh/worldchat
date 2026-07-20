class shipping {
  int? id;
  var  cost;
  int? coins;
  int? status;
  String? createdAt;
  String? updatedAt;

  shipping(
      {this.id,
        this.cost,
        this.coins,
        this.status,
        this.createdAt,
        this.updatedAt});

  shipping.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cost = json['cost'];
    coins = json['coins'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cost'] = cost;
    data['coins'] = coins;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}