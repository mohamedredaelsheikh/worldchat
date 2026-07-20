class PayPalPackage {
  int? id;
  int? coins;
  double? price;
  int? status;
  PayPalPackage(
      {this.id,
        this.coins,
        this.price,
        this.status,
     });

  PayPalPackage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    coins = json['coins'];
    price = json['price'];
    status = json['status'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['coins'] = coins;
    data['price'] = price;
    data['status'] = status;
    return data;
  }
}