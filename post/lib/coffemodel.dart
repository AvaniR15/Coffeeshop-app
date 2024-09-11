// To parse this JSON data, do
//
//     final coffeemodel = coffeemodelFromJson(jsonString);

import 'dart:convert';

List<Coffeemodel> coffeemodelFromJson(String str) => List<Coffeemodel>.from(
    json.decode(str).map((x) => Coffeemodel.fromJson(x)));

String coffeemodelToJson(List<Coffeemodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Coffeemodel {
  String id;
  String name;
  String description;
  double price;
  String image;
  String roastLevel;
  String rating;
  String size;
  String category;

  Coffeemodel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.roastLevel,
    required this.rating,
    required this.size,
    required this.category,
  });

  factory Coffeemodel.fromJson(Map<String, dynamic> json) => Coffeemodel(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        image: json["image"],
        roastLevel: json["roastLevel"],
        rating: json["rating"],
        size: json["size"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "description": description,
        "price": price,
        "image": image,
        "roastLevel": roastLevel,
        "rating": rating,
        "size": size,
        "category": category,
      };
}
