import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({bool authenticated = false})
      : super(
          authenticated ? Empty() : Unauthenticated(),
        );

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {}
}

abstract class AuthEvent {}

class Initialize extends AuthEvent {}

class RegisterRequested extends AuthEvent {}

abstract class AuthState {}

class Empty extends AuthState {}

class Loading extends AuthState {}

class Unauthenticated extends AuthState {}
