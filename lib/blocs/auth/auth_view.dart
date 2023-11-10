import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shellarch2/UI/pages/login_page.dart';

import 'auth_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) => _buildPage(context)
    );
  }


  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);

    if (bloc.state is LoadingLoginState){
      return const Center(child: CircularProgressIndicator());
    }else if(bloc.state is UnlogedState){
      return LoginPage();
    }else if(bloc.state is LogedState){
      return Center(
          child: Column (
            children: [
              Text(
                  "Welcome: ${bloc.state.toString()}"
              ),
              ElevatedButton(
                child: const Text("Logout"),
                onPressed: (){
                  //bloc.add(PhotosLoadEvent());
                  context.read<AuthBloc>().add(LogoutEvent());
                },
              )
            ],
          )
      );
    }else {
      return Center(
          child: Column (
            children: [
              Text(
                  "Error: ${bloc.state.toString()}"
              ),
              ElevatedButton(
                child: const Text("Back"),
                onPressed: (){
                  //bloc.add(PhotosLoadEvent());
                  context.read<AuthBloc>().add(LogoutEvent());
                },
              )
            ],
          )
      );
    }
  }
}

