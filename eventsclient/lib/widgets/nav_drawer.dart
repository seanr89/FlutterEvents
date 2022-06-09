import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        const UserAccountsDrawerHeader(
          accountName: Text(
            "Sean Rafferty",
          ),
          accountEmail: Text("srafferty89@gmail.com"),
        ),
        ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text("Home"),
            onTap: () {
              //Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            }),
            _buildDivider(),
            ListTile(
              leading: const Icon(Icons.event_note_sharp),
              title: const Text("Events"),
              onTap: () {
                Navigator.pushNamed(context, '/events');
              }),
      ],
    ),
    );
  }
}

 ///
  ///Simple divider widget to split the navigation items
  ///
  Divider _buildDivider() {
    return const Divider(
      color: Colors.white,
    );
  }
