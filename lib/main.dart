import 'package:flutter/material.dart';
import 'package:hotel_booking_app/first_page.dart';
import 'package:hotel_booking_app/second_page.dart';


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
        primaryColor:  const Color(0xffF3F8F9)
      ),
      home: const MyHomePage(),
      routes: <String, WidgetBuilder>{
        MyHomePage.homepageroute: (context) => const MyHomePage(),
        SecondPage.secondpageroute: (context) => const SecondPage(),
      }
    );
  }
}



