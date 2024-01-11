import 'package:flutter/material.dart';
import 'package:travel_app/book_flight.dart';
import 'package:travel_app/landing_page.dart';
import 'package:travel_app/search_page_flight.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 118, 180, 209),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 252, 252, 252)),
        useMaterial3: true,
      ),
      //home: const LandingPage(),
      home: const BookFlightPage(),
    );
  }
}
