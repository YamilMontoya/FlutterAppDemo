import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shellarch2/Models/userModel.dart';

/// The third screen in the bottom navigation bar.
class ScreenD extends StatelessWidget {
  /// Constructs a [ScreenC] widget.
  const ScreenD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User List'),
          actions: <Widget>[
            Center(child: Text("User Count ${UserModel.users.length.toString()}")),
            ]
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: UserModel.users.length,
              itemBuilder: (context, index) {
                return Card(
                  key: ValueKey(UserModel.users[index]["id"]),
                  margin: const EdgeInsets.all(10),
                  color: Colors.greenAccent.shade400,
                  child: ListTile(
                    leading: Text(UserModel.users[index]["id"].toString()),
                    title: Text(UserModel.users[index]["name"]),
                    subtitle: Text(UserModel.users[index]["city"]),
                  ),
                );
              },
            ),
          ),
        ]));
  }
}
