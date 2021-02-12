import 'package:flutter/material.dart';
import 'package:thirtydaysofflutter/utils/routes.dart';
import 'package:thirtydaysofflutter/view/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:thirtydaysofflutter/view/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        brightness: Brightness.dark
      ),
      // home: HomePage(),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        // "/login" : (context) => LoginPage(),
      },
    );
  }
}
