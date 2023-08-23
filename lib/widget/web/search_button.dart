import 'package:flutter/material.dart';

import '../../colors.dart';

class SearchButton extends StatelessWidget {
   final String title;
  const SearchButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      color: searchColor,
      onPressed: () {},
      child: Text(
        title,
      ),
    );
  }
}