import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testappnumbertwo/blocs/authentiction_bloc.dart';
import 'package:testappnumbertwo/pages/components/login_form.dart';
import 'components/authentication_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      headerText: "Welcome Back",
      form: BlocBuilder<AuthBloc, AuthState>(
        bloc: context.read<AuthBloc>(),
        builder: (context, state) {
          print("state is ${state.runtimeType}");

          if (state == Unauthenticated()) {
            return LoginForm();
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
