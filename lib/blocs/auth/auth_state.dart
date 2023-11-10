abstract class AuthState {

}

class LoadingLogoutState extends AuthState {}

class LoadingLoginState extends AuthState {}

class ForcingLoginState extends AuthState {}

class UnlogedState extends AuthState {}

class LogedState extends AuthState {
  final String user;
  LogedState(this.user);
  @override
  String toString() {
    return '{user: $user} you are Loged! ';
  }
}

class LoginErrorState extends AuthState {
  final String error;
  LoginErrorState(this.error);
  @override
  String toString() {
    return '{error: $error}';
  }
}

class LoadingSignUpState extends AuthState {}

class LoadedSignUpState extends AuthState {}

class ErrorSignUpState extends AuthState {}

class LoadingForgotPasswordState extends AuthState {}

class LoadedForgotPasswordState extends AuthState {}

class ErrorForgotPasswordState extends AuthState {}

class LoadingResendCodeState extends AuthState {}

class LoadedResendCodeState extends AuthState {}

class ErrorResendCodeState extends AuthState {}