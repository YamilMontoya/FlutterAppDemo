import 'package:flutter/material.dart';
import '../../blocs/photos/photos_bloc_view.dart';

/// The third screen in the bottom navigation bar.
class ScreenD extends StatelessWidget {
  /// Constructs a [ScreenC] widget.
  const ScreenD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Albums Photos List'),
        ),
        body: PhotosBlocPage()
    );
  }
}
