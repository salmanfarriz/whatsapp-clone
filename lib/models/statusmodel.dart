// To parse this JSON data, do
//
//     final statusModel = statusModelFromJson(jsonString);

import 'dart:convert';

StatusModel statusModelFromJson(String str) => StatusModel.fromJson(json.decode(str));

String statusModelToJson(StatusModel data) => json.encode(data.toJson());

class StatusModel {
    StatusModel({
        required this.avatar,
        required this.name,
        required this.date,
        required this.time,
    });

    String avatar;
    String name;
    String date;
    String time;

    factory StatusModel.fromJson(Map<String, dynamic> json) => StatusModel(
        avatar: json["avatar"],
        name: json["name"],
        date: json["date"],
        time: json["Time"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "date": date,
        "Time": time,
    };
}


