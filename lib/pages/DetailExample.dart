
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The details screen for either the A, B or C screen.
class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen].
  const DetailsScreen({
    required this.label,
    super.key,
  });

  /// The label to display in the center of the screen.
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Details for $label',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            _JustforExample(context)
          ],
        ),

      ),

    );
  }
  static Widget _JustforExample(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/a')) {
      return Text('This Screen does not Overlap the shell.');
    }
    if (location.startsWith('/b')) {
      return Text('this screen Overlap the shell because change in the navigator key value', style: Theme.of(context).textTheme.bodyMedium);
    }
    if (location.startsWith('/c')) {
      return Text('This Screen does not Overlap the shell.');
    }
    return Text('bad rout');
  }
}