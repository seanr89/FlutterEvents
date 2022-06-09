import 'package:eventsclient/screens/events_page.dart';
import 'package:eventsclient/screens/loading_page.dart';
import 'package:eventsclient/widgets/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoadingPage(),
        '/home': (context) => const HomePage(),
        '/events': (context) => const EventsPage()
      },
    );
  }
}
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Events App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // builder: (context, child) {
      //   return Scaffold(drawer: MyDrawer(), body: child);
      // },
      // home: FirstRoute(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter - Events Client'),
          ),
          // body: const Center(
          //   child: Text('Hello World from Sean Rafferty'),
          // ),
          drawer: MyDrawer()),
    );
  }
}

/// BuildContext doesn’t have a MaterialApp as parent!
class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Route'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text('Hello World from Sean Rafferty'),
              ),
              // Center(
              //   child: ElevatedButton(
              //     child: const Text('Open route'),
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const SecondRoute()),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ));
  }
}
*/
