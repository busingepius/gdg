import 'package:flutter/material.dart';

import '../screens/screens.dart';

const List<Widget> screens = [
  HomeScreen(),
  SavedScreen(),
  Account(),
];

const List<Map<String, dynamic>> barItems = [
  {
    "label": "Home",
    "icon": Icon(Icons.home),
  },
  {
    "label": "Likes",
    "icon": Icon(Icons.favorite_outlined),
  },
  {
    "label": "Account",
    "icon": Icon(Icons.account_circle_outlined),
  }
];

ThemeData themeData = ThemeData(
  primarySwatch: Colors.blue,
  colorScheme: ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.amber,
  ),
  splashFactory: NoSplash.splashFactory,
  highlightColor: Colors.transparent,
);

final List<String>chipTitles = ["All","Pending","Received","Paid","Returned","Checked out"];
