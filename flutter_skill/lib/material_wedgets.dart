import 'package:flutter/material.dart';
import 'package:flutter_skill/drawer_wedget.dart';

class MaterialWedgets extends StatefulWidget {
  const MaterialWedgets({super.key});

  @override
  State<MaterialWedgets> createState() => _MaterialWedgetsState();
}

class _MaterialWedgetsState extends State<MaterialWedgets> {
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Wedgets'),
      ),
      drawer: const DrawerWedgets(),
      endDrawer: const DrawerEnd(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Builder(
            builder: (context) => Center(
              child: TextButton(
                onPressed: () {
                  // Scaffold.of(context).openDrawer();
                  Scaffold.of(context).openEndDrawer();
                },
                child: Text('OPEN DRAWER'),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
