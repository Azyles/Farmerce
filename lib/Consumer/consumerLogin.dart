import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ConsumerLogin extends StatefulWidget {
  ConsumerLogin({Key key}) : super(key: key);

  @override
  _ConsumerLoginState createState() => _ConsumerLoginState();
}

class _ConsumerLoginState extends State<ConsumerLogin> {
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future login() async {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: userNameController.text, password: passwordController.text)
        .then((value) {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: userNameController,
            ),
            TextField(
              controller: passwordController,
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () async {
                await login();
              },
            )
          ],
        ),
      ),
    );
  }
}
