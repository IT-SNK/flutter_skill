import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MaterialWedgets extends StatefulWidget {
  const MaterialWedgets({super.key});

  @override
  State<MaterialWedgets> createState() => _MaterialWedgetsState();
}

class _MaterialWedgetsState extends State<MaterialWedgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Wedgets'),
      ),
      body: Center(
        child: Text('Material'),
      ),
    );
  }
}
