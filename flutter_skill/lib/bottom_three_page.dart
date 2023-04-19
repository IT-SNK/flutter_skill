import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomThreePage extends StatefulWidget {
  const BottomThreePage({super.key});

  @override
  State<BottomThreePage> createState() => _BottomThreePageState();
}

class _BottomThreePageState extends State<BottomThreePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text('Page-3'),
      ),
    );
  }
}
