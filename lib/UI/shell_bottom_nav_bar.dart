
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellBNavBar extends StatelessWidget {
  const ShellBNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'A Screen',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'B Screen',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important_rounded),
          label: 'C Screen',
        ),
      ],
      currentIndex: _calculateSelectedIndex(context),
      onTap: (int idx) => _onItemTapped(idx, context),
      selectedItemColor: Colors.white,

    );
  }
  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/a')) {
      return 0;
    }
    if (location.startsWith('/b')) {
      return 1;
    }
    if (location.startsWith('/c')) {
      return 2;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/a');
        break;
      case 1:
        GoRouter.of(context).go('/b');
        break;
      case 2:
        GoRouter.of(context).go('/c');
        break;
    }
  }
}
