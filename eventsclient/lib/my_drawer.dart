import 'package:eventsclient/second_route.dart';
import 'package:flutter/material.dart';

///
///App Drawer Widget Support
///
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.blue),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text("Sean Rafferty"), accountEmail: null),
            _buildDivider(),
            _buildLabel("Menu 1"),
            _buildDivider(),
            _buildLabel("Menu 2"),
            _buildDivider(),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()));
              },
            ),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  ///
  ///Simple divider widget to split the navigation items
  ///
  Divider _buildDivider() {
    return const Divider(
      color: Colors.white,
    );
  }

  ///
  ///Simple label widget to display an item
  ///
  Widget _buildLabel(String text) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ));
  }
}
