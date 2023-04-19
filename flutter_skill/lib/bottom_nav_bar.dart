import 'package:flutter/material.dart';
import 'package:flutter_skill/display/list_imges.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
  
}

class _BottomNavBarState extends State<BottomNavBar> {
//  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int _position = 0;

  void navBottom(index) {
    setState(() {
      _position = index;
    });
  }

 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _position,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'profile'),
        ],
        onTap: navBottom,
      ),
      body: Container(child: listPages[_position]),
      
    );
  }
}
