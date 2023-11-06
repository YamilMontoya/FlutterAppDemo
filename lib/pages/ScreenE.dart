import 'package:flutter/material.dart';
import 'package:shellarch2/Models/fewUserModel.dart';

import '../UI/utils.dart';

/// The third screen in the bottom navigation bar.
class ScreenE extends StatelessWidget {
  /// Constructs a [ScreenC] widget.
  const ScreenE({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const  Text('Async User List'),
        ),
        body: FutureBuilder(
          future: getUsers(),
          builder: (BuildContext context, AsyncSnapshot<List<FUser>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(7),
                    elevation: 4,
                    color: Colors.greenAccent[ColorShader(index, true)],
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(IconData(index+61077, fontFamily: 'MaterialIcons')),
                          title: Text(snapshot.data![index].name),
                          subtitle: Text(snapshot.data![index].email),
                        ),

                            ButtonBar(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                      content: Text("Edit")));
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                      content: Text("Delete")));
                                  },
                                )
                              ],
                            )],
                    ),
                  );
                },
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return const Center(child: Text("Error"));
            }
          },
        ));
  }
}

