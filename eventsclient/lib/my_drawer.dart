import 'package:flutter/material.dart';

///
///App Drawer Widget Support
///
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.blue),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _buildLabel("Menu 1"),
            _buildDivider(),
            _buildLabel("Menu 2"),
            _buildDivider(),
            _buildLabel("Menu 3"),
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
    return Divider(
      color: Colors.white,
    );
  }

  ///
  ///Simple label widget to display an item
  ///
  Widget _buildLabel(String text) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ));
  }
}
