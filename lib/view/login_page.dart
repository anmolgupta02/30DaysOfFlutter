import 'package:flutter/material.dart';
import 'package:thirtydaysofflutter/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView( //this can be used for making the UI a little Responsive if the height of phone is too small.
        child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image.asset("images/login_pic.png",
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
                // height: 400,
              ),
              Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Please Enter your Username"
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Please Enter your Password"
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        child: Text("Click Here To Login"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(200, 50)
                      ),
                      onPressed:  () {
                        print("login was pressed! Bitch!");
                        Navigator.pushNamed(context, MyRoutes.homeRoute); //Used this to navigate to next page.
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
      )
      );
  }
}
