import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomSecondPage extends StatefulWidget {
  const BottomSecondPage({super.key});

  @override
  State<BottomSecondPage> createState() => _BottomSecondPageState();
}

class _BottomSecondPageState extends State<BottomSecondPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Text('Page-2'),
      ),
    );
  }
}
