import 'package:flutter/material.dart';
import 'package:thirtydaysofflutter/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonChanged = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      //this can be used for making the UI a little Responsive if the height of phone is too small.
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Image.asset(
            "images/login_pic.png",
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            // height: 400,
          ),
          Text(
            "Welcome! $name",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Please Enter your Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Please Enter your Password"),
                  obscureText: true,
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () async {
                    print("login was pressed! Bitch!");
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute); //Used this to navigate to next page.
                    setState(() {
                      buttonChanged = true;
                    });
                  },
                  child: AnimatedContainer(
                    height: 50,
                    width: buttonChanged ? 80 : 150,
                    alignment: Alignment.center,
                    child: buttonChanged
                        ? Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : Text(
                            "Click here to login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      // shape: buttonChanged
                      //     ? BoxShape.circle
                      //     : BoxShape
                      //         .rectangle, //colors can be used either inside the decoration or on the main property
                      borderRadius:
                          BorderRadius.circular(buttonChanged ? 70 : 8),
                    ),
                    duration: Duration(seconds: 1),
                  ),
                )
                // ElevatedButton(
                //     child: Text("Click Here To Login"),
                //   style: TextButton.styleFrom(
                //     minimumSize: Size(200, 50)
                //   ),
                //   onPressed:  () {
                //     print("login was pressed! Bitch!");
                //     Navigator.pushNamed(context, MyRoutes.homeRoute); //Used this to navigate to next page.
                //   },
                // )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
