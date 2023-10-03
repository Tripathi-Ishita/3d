import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login_(),
    );
  }
}

class Login_ extends StatelessWidget {
  const Login_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage("asset/taxi.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: "Email",
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.lightBlue,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: "Password",
                    prefixIcon: Icon(
                      Icons.fingerprint,
                      color: Colors.lightBlue,
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .035,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .83,
                height: MediaQuery.of(context).size.height * .06,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                )),
            TextButton(onPressed: () {}, child: Text("FORGOT PASSWORD?")),
            Padding(
              padding: const EdgeInsets.only(top: 30 ),
              child: RichText(
                text: TextSpan(
                    text: "Don\'t have an account?",
                    style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: " Sign up",
                  style: TextStyle(
                    color: Colors.lightBlue
                  ))
                ]),

              ),
            )
          ],
        ),
      ),
    );
  }
}
