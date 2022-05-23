import 'package:flutter/material.dart';
import 'package:flutter_movies_list/models/movies.dart';
import 'package:flutter_movies_list/pages/movieDetails.dart';
import 'package:flutter_movies_list/pages/movieList.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate);
  }

  final _router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => MoviesList()),
    GoRoute(
        path: '/details',
        builder: (context, state) => MovieDetail(movie: state.extra as Movie))
  ]);
}
