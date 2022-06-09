import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          const Center(
            child: Text("Loading")
          ),
          ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pushNamed(context, '/home');
          },
          child: const Text('Go Home!'),
          ),
        ]
        ),
        

    );
  }
}