import 'package:flutter/material.dart';
import 'package:flutter_skill/bottom_nav_bar.dart';
import 'package:flutter_skill/material_wedgets.dart';
import 'package:flutter_skill/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Skillbox Flutter',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomepage(),
          '/material_wedgets': (context) => const MaterialWedgets(),
          '/ bottom_nav_bar': (context) => const BottomNavBar(),
        }

     

    );
  }
}

