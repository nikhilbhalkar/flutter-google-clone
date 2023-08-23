import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';
import 'package:google_search_clone/responsive/mobile_screen.dart';
import 'package:google_search_clone/responsive/wer_screen.dart';

import 'responsive/responsive.dart';

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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
        ),
      home: 
      const ResponsiveScreen(
        mobilescreenlayout:MobileScreen() ,
        webscreenlayout: WebScreen(),
      ),
    );
  }
}

