import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("30 Days of Flutter"),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
        ),
      ),
    );
  }
}
