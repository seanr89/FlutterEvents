import 'package:eventsclient/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page selected
  int indexPage = 0;
  final List fragments = const [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: const Center(
          child: Text("Hello")
          ),
        drawer: const NavDrawer(),
    );
  }
}
