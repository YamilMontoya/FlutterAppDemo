import 'package:flutter/material.dart';
import 'package:shellarch2/UI/shell_bottom_nav_bar.dart';
import 'package:shellarch2/UI/shell_drawer.dart';


/// Builds the "shell" for the app by building a Scaffold with a
/// BottomNavigationBar, where [child] is placed in the body of the Scaffold.
class ShellScreen extends StatelessWidget {
  /// Constructs an [ShellScreen].
  const ShellScreen({
    required this.child,
    super.key,
  });

  /// The widget to display in the body of the Scaffold.
  /// In this sample, it is a Navigator.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ShellDrawer(),
      appBar: AppBar(title: const Text("Flutter App Demo by Yamil")),
      body: child,
      bottomNavigationBar: ShellBNavBar()
    );
  }


}