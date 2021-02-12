import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Image.asset("images/login_pic.png",
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
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
                    height: 20,
                  ),
                  ElevatedButton(
                      child: Text("Click Here To Login"),
                    onPressed:  () {
                      print("login was pressed! Bitch!");
                    },
                  )
                ],
              ),
            ),
          ],
        )
      );
  }
}
