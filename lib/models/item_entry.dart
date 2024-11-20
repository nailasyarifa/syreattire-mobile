// To parse this JSON data, do
//
//     final itemEntry = itemEntryFromJson(jsonString);

import 'dart:convert';

ItemEntry itemEntryFromJson(String str) => ItemEntry.fromJson(json.decode(str));

String itemEntryToJson(ItemEntry data) => json.encode(data.toJson());

class ItemEntry {
    String model;
    String pk;
    Fields fields;

    ItemEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ItemEntry.fromJson(Map<String, dynamic> json) => ItemEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    String category;
    String size;
    String color;
    int price;

    Fields({
        required this.user,
        required this.name,
        required this.category,
        required this.size,
        required this.color,
        required this.price,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        category: json["category"],
        size: json["size"],
        color: json["color"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "category": category,
        "size": size,
        "color": color,
        "price": price,
    };
}
