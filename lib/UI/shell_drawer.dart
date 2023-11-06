
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Models/userModel.dart';


class ShellDrawer extends StatelessWidget {
  const ShellDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.blue),
      child: 
        Drawer(
          child: ListView(
            //padding: const EdgeInsets.all(10.0),
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text(
                  "yamilmontoya@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.italic,
                  ), ),
                accountEmail: const Text(
                  "yamilmontoya@gmail.com",
                  style: TextStyle(
                      color: Colors.white
                  ), ),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                      child: Image.asset('assets/img/me.jpg')),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/matrix.gif'),
                    fit: BoxFit.fill, // https://www.woolha.com/tutorials/flutter-using-decorationimage-examples
                  )
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Inicio"),
                onTap: () {
                  Navigator.of(context).pop();
                  GoRouter.of(context).go('/a');
                },
              ),
               Divider(
                color: Colors.grey.shade400,
                thickness: 2,
                indent: 70,
                endIndent: 10,
              ),
              ListTile(
                leading: const Icon(Icons.account_circle_outlined),
                title: const Text("Mi Perfil"),
                onTap: () {
                  Navigator.of(context).pop();
                  GoRouter.of(context).go('/b');
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Users"),
                onTap: () {
                  Navigator.of(context).pop();
                  UserModel.Load(); // Revisar
                  GoRouter.of(context).go('/d');
                },
              ),
              ListTile(
                leading: Icon(Icons.credit_card_rounded),
                title: Text("User Asynchronously"),
                onTap: () {
                  Navigator.of(context).pop();
                  GoRouter.of(context).go('/e');
                },
              ),
              Divider(
                color: Colors.grey.shade400,
                thickness: 2,
                indent: 70,
                endIndent: 10,
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Configuracion"),
              ),
              const ListTile(
                leading: Icon(Icons.help),
                title: Text("Ayuda"),
              )

              //const Text("item 1"),
              //const Text("item 1"),
            ],
          ),
        ),
    );
  }
}
