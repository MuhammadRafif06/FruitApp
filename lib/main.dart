import 'package:flutter/material.dart';
import 'package:fruit_app_flutter/screen/home_screen.dart';
import 'package:fruit_app_flutter/screen/login_page.dart';

void main() => runApp(MyApp());


@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomeScreen(),
  );
}




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit UI',
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}