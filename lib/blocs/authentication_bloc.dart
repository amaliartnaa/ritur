import 'package:bloc/bloc.dart';
import '../models/authentication_event.dart';
import '../models/authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitialState());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if (event is SignUpEvent) {
      yield AuthenticationSignUpState();
    } else if (event is LoginEvent) {
      yield AuthenticationLoginState();
    }
  }
}
