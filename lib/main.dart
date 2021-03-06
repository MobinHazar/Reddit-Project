import 'package:flutter/material.dart';
import 'package:reddit/Screens/Setting/setting.dart';
import 'package:reddit/Screens/Welcome/welcome_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Reddit',
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
          scaffoldBackgroundColor: Colors.red,
        ),
        home:  const Setting(),
    );
  }
}
