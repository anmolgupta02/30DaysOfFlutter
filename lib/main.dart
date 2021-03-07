import 'package:flutter/material.dart';
import 'package:thirtydaysofflutter/utils/routes.dart';
import 'package:thirtydaysofflutter/view/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:thirtydaysofflutter/view/login_page.dart';
import 'package:thirtydaysofflutter/widgets/themes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      // home: HomePage(),
      initialRoute: MyRoutes.homeRoute, //Adding this to initiate Home Page for faster development.
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        // "/login" : (context) => LoginPage(),
      },
    );
  }
}
