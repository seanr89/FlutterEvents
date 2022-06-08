import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            title: const Text("Orders"),
            onTap: () {
              //Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            }),
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
