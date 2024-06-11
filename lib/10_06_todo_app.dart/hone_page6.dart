// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HomePage6 extends StatefulWidget {
  const HomePage6({super.key});

  @override
  State<HomePage6> createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: Center(child: Text("Home Page-6")),
        title: Center(child: Text("To Do Page")),
      ),

      // body: Center(child: Text("Home Page-6"))
      body: Center(child: Text("To Do Page"))
    );
  }
}