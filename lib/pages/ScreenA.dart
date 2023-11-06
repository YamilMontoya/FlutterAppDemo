import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The first screen in the bottom navigation bar.
class ScreenA extends StatelessWidget {
  /// Constructs a [ScreenA] widget.
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App Page'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/Cube.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
              const Text(
                'Welcome to the Flutter app',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/a/details');
                },
                style: const ButtonStyle(
                  alignment: Alignment.center,
                ),
                child: const  Text(
                    'Tap here to navigate to Details',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      //decoration: TextDecoration.overline,
                      //decorationColor: Colors.lightGreen.shade200,
                      //decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),

            ],

          ),

      ),
    ));
  }
}
