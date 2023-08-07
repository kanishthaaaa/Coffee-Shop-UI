import 'package:coffee_shop/pages/intro_page.dart';
import 'package:coffee_shop/pages/menu_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/intropage' : (context) => const IntroPage(),
        '/menupage' : (context) => const  MenuPage(),
      },
      home: const Scaffold(
        backgroundColor:Color.fromARGB(255, 158, 65, 59),
        body: IntroPage()),
    );
  }
}