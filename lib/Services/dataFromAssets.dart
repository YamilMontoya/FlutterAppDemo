
import 'package:flutter/services.dart';

import '../Models/fewUserModel.dart';

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