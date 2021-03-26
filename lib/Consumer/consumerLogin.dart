import 'package:farmerce/Consumer/ConsumerHome.dart';
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

  var errText = "";

  Future login() async {
    try {
      // ignore: unused_local_variable
      FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: userNameController.text, password: passwordController.text)
          .then((value) {
        errText = "logged in";

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ConsumerHome()));
      });
    } catch (e) {
      errText = "Incorrect credentails";
      setState(() {});
      print("Incorrect");
    }
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
            Text(
              errText,
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () async {
                login();
              },
            )
          ],
        ),
      ),
    );
  }
}
