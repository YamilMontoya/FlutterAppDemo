//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/services.dart';

List<FUser> FUserFromJson(String str) => List<FUser>.from(json.decode(str).map((x) => FUser.fromJson(x)));

String FUserToJson(List<FUser> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FUser {
  String balance;
  String picture;
  int age;
  String name;
  String gender;
  String company;
  String email;

  FUser({
    required this.balance,
    required this.picture,
    required this.age,
    required this.name,
    required this.gender,
    required this.company,
    required this.email,
  });

  factory FUser.fromJson(Map<String, dynamic> json) => FUser(
    balance: json["balance"],
    picture: json["picture"],
    age: json["age"],
    name: json["name"],
    gender: json["gender"],
    company: json["company"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "balance": balance,
    "picture": picture,
    "age": age,
    "name": name,
    "gender": gender,
    "company": company,
    "email": email,
  };
}

Future<List<FUser>> getUsers() async {
  /*
  final response = await http.get('https://jsonplaceholder.typicode.com/users');
  if (response.statusCode == 200) {
    return FUsers.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load users');
  }
  */
  final String response = await rootBundle.loadString('assets/json/fewUsers.json');
  return  FUserFromJson(response);
}