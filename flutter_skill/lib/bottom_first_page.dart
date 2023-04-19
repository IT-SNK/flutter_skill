import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomFirstPage extends StatefulWidget {
  const BottomFirstPage({super.key});

  @override
  State<BottomFirstPage> createState() => _BottomFirstPageState();
}

class _BottomFirstPageState extends State<BottomFirstPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Text('Page-1'),
      ),
    );
  }
}
