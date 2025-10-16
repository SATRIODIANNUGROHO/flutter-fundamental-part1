import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 30),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoButton(
                  child: const Text("Contoh button"),
                  onPressed: () {
                  },
                ),
                const SizedBox(height: 20),
                const CupertinoActivityIndicator(radius: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}