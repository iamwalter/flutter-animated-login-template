import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testappnumbertwo/blocs/authentiction_bloc.dart';
import 'package:testappnumbertwo/pages/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(FirebaseInitializerWrapper());
}

class FirebaseInitializerWrapper extends StatefulWidget {
  @override
  _FirebaseInitializerWrapperState createState() =>
      _FirebaseInitializerWrapperState();
}

class _FirebaseInitializerWrapperState
    extends State<FirebaseInitializerWrapper> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong!");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class MyApp extends StatelessWidget {
  final themeData = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
        headline3: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold)),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: themeData,
        home: HomeView(),
      ),
    );
  }
}
