import 'package:flutter/material.dart';
import 'package:thirtydaysofflutter/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Catalog App",
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
            child: Text(
          'Hello World',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
      drawer: MyDrawer(),
    );
  }
}
