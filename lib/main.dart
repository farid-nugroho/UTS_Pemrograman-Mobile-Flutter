import 'package:flutter/material.dart';
import './screens/movie_detail_screen.dart';
import './screens/movie_overview_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Film Bioskop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieOverviewScreen(),
      routes: {
        MovieDetailScreen.routeName: (context) => MovieDetailScreen(),
      },
    );
  }
}
