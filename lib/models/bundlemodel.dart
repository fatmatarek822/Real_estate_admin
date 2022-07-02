class BundelModel {
  String? bundleName;
  String? bundleDuration;
  String? price;

  BundelModel({
  this.bundleName,
  this.bundleDuration,
  this.price,
});

  BundelModel.fromJson(Map<String, dynamic> json) {
    bundleName = json['bundleName'];
    bundleDuration = json['bundleDuration'];
    price = json['price'];
  }

  Map<String, dynamic> toMap() {
    return {
      'bundleName': bundleName,
      'bundleDuration': bundleDuration,
      'price': price,
    };
  }
}
