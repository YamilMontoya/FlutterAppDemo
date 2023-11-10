import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shellarch2/blocs/auth/auth_bloc.dart';
import 'package:shellarch2/blocs/photos/photos_bloc_bloc.dart';

import '../Router/shellRouter.dart';

class AppBlocObserver extends BlocObserver {
  /// {@macro app_bloc_observer}
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) print(change);
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc,
      Transition<dynamic, dynamic> transition,
      ) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

class BlocWatchedApp extends StatelessWidget {
  /// {@macro app}
  const BlocWatchedApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*return BlocProvider(
      create: (BuildContext context) => PhotosBloc(),
      child: ShellRouter(),
    );*/
    return MultiBlocProvider(
      providers: [
        BlocProvider<PhotosBloc>(
          create: (BuildContext context) => PhotosBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => AuthBloc(),
        ),
      ],
      child: ShellRouter(),
    );
  }
}