import 'dart:ffi';

import 'package:flutter/material.dart';

class ConnectivityScreen extends StatefulWidget {
  const ConnectivityScreen({super.key});

  @override
  State<ConnectivityScreen> createState() => _ConnectivityScreenState();
}

class _ConnectivityScreenState extends State<ConnectivityScreen> {
  double height = 200, width = 200;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    print("build ✅");
    return Scaffold(
      appBar: AppBar(title: const Text('Lifecycle Demo')),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              width:  width,
              height: height,
              color: color,
              duration: Duration(seconds: 1),
              clipBehavior: Clip.antiAlias,
              curve: width == 200? Curves.bounceIn : Curves.easeIn,
            ),
            SizedBox(
              height: 34,
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                width = width == 300? 200 : 300;
                height = height == 200? 300 : 200;
                color = color == Colors.red? Colors.green : Colors.red;
              });
            }, child: Text('Tap'))
          ],
        ),
      )
    );
  }
}