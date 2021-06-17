import 'package:flutter/material.dart';
import 'package:flutter_movies/home_page.dart';

void main(List<String> args) {
  runApp(app);
}

final app = MaterialApp(
    title: 'Flutter Movies',
    debugShowCheckedModeBanner: false,
    theme: lightThemeData,
    navigatorObservers: [],
    home: HomePage());

final ThemeData lightThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: appBarTheme,
  brightness: Brightness.light,
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
    ),
  ),
);

final appBarTheme = AppBarTheme(centerTitle: true, elevation: 0);
