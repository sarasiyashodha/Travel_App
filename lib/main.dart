import 'package:flutter/material.dart';
import 'package:travel_app/main_screen.dart';
import 'title_screen.dart';
import 'details_screen.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return TitleScreen();
        },
        '/second': (context) {
          return DetailPage();
        },
      },
      theme: ThemeData.light(),
    );
  }
}
