import 'package:flutter/material.dart';
import 'package:flutter_skill/bottom_nav_bar.dart';
import 'package:flutter_skill/drawer_wedget.dart';

class MaterialWedgets extends StatefulWidget {
  const MaterialWedgets({super.key});

  @override
  State<MaterialWedgets> createState() => _MaterialWedgetsState();
}

class _MaterialWedgetsState extends State<MaterialWedgets> {
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // PersistentBottomSheetController _controller;
  // void toggleBottomSheet() {
  //   if (_controller == null) {
  //     _controller = scaffoldKey.currentState!.showBottomSheet(
  //       (context) => Container(
  //         child: const Center(
  //           child: Text('123'),
  //         ),
  //       ),
  //     );
  //   }
  // }
  int _num = 0;

  void toggleSheet() {
    setState(() {
      _num++;
    });
  }

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
            builder: (context) => Column(
              children: [
                Center(
                  child: TextButton(
                    onPressed: () {
                      // Scaffold.of(context).openDrawer();
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const Text('OPEN DRAWER'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const BottomNavBar();
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: const [
                      Text(
                        'next page',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 25,
                            color: Colors.deepPurpleAccent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: toggleSheet,
        label: Text('add $_num'),
        icon: Icon(Icons.add),
      ),
    );
  }
}
