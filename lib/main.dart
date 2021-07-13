import 'package:flutter/material.dart';
import 'package:movie_app/blocs/provider.dart';
import 'package:movie_app/blocs/search_bloc.dart';
import 'package:movie_app/repositories/api_repository.dart';
import 'package:movie_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Provider<SearchBloc>(
        data: SearchBloc(),
        child: const HomeScreen(),
      ),
    );
  }
}
