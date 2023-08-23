import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget mobilescreenlayout;
  final Widget webscreenlayout;
  const ResponsiveScreen({super.key, required this.mobilescreenlayout, required this.webscreenlayout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder:(context, constraints) {
          if(constraints.maxWidth<= 768){
            return mobilescreenlayout;
          }
          return webscreenlayout;
        },),
    );
  }
}