import 'dart:async';

import 'package:bloc/bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(UnlogedState()) {
    on<LoginEvent>(_login);
    on<LogoutEvent>(_logout);
  }

  void _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(LoadingLoginState());
    if (event.username == "tito" && event.password == "asd"){
        emit(LogedState(event.username));
    }else {
      emit(LoginErrorState("Invalid username or password"));
    }
  }

  void _logout(LogoutEvent event, Emitter<AuthState> emit) {
    emit(UnlogedState());
  }
}
