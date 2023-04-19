import 'package:flutter/material.dart';

class DrawerWedgets extends StatefulWidget {
  const DrawerWedgets({super.key});

  @override
  State<DrawerWedgets> createState() => _DrawerWedgetsState();
}

class _DrawerWedgetsState extends State<DrawerWedgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: const [
            DrawerHeader(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/nauken.JPG'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing:
                  InkWell(onTap: null, child: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
              trailing:
                  InkWell(onTap: null, child: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Profile'),
              trailing:
                  InkWell(onTap: null, child: Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerEnd extends StatefulWidget {
  const DrawerEnd({super.key});

  @override
  State<DrawerEnd> createState() => _DrawerEndState();
}

class _DrawerEndState extends State<DrawerEnd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: const [
            DrawerHeader(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/nauken.JPG'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing:
                  InkWell(onTap: null, child: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
              trailing:
                  InkWell(onTap: null, child: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Profile'),
              trailing:
                  InkWell(onTap: null, child: Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
    );
  }
}
