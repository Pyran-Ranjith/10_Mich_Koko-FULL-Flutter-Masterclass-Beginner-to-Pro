// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      // appBar: AppBar(
      //   title: Center(child: Text("Home Page")),
      // ),

      body: Center(child: Text("Home Page"))
    );
  }
}
