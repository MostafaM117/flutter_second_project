import 'package:flutter/material.dart';
import 'package:hotel_booking_app/first_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking App',
      theme: ThemeData(
        primaryColor:  Color(0xffF3F8F9)
      ),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffF3F8F9)),
      //   useMaterial3: true,
      // ),
      home: const MyHomePage(),
    );
  }
}



