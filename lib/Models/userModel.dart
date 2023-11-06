
import 'dart:convert';

import 'package:flutter/services.dart';

class UserModel {
  static List _users=[];
  static List get users => _users;

  static Future<void> Load() async {
    final String response = await rootBundle.loadString('assets/json/users_100.json');
    final data = await json.decode(response);
    print(data.length);
    _users = data;
    print("Data reed from user_100.json");
    print("..number of items ${_users.length}");
    print(_users[0].toString());
  }
}

Future GetUsersFromAsset() async {
  final String response = await rootBundle.loadString('assets/json/users_100.json');
  final data = await json.decode(response);
  return  data;
}