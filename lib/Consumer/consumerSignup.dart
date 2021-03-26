import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ConsumerRegister extends StatefulWidget {
  ConsumerRegister({Key key}) : super(key: key);

  @override
  _ConsumerRegisterState createState() => _ConsumerRegisterState();
}

class _ConsumerRegisterState extends State<ConsumerRegister> {
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController repeatPasswordController = new TextEditingController();

  var errText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            TextField(
              controller: repeatPasswordController,
            ),
            Text(
              errText,
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              child: Text("Signup"),
              onPressed: () async {
                var username = userNameController.text;
                var password = passwordController.text;
                var repeatPassword = repeatPasswordController.text;

                if (username != null &&
                    password != null &&
                    repeatPassword != null) {
                  if (password == repeatPassword) {
                    try {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: userNameController.text,
                              password: password)
                          .then((value) {});
                    } catch (e) {
                      print(e);
                      setState(() {
                        errText = e.toString();
                      });
                    }
                  } else {
                    setState(() {
                      errText = "Passwords don't match";
                    });
                  }
                } else {
                  errText = "Cannot leave feilds blank";

                  setState(() {});
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
