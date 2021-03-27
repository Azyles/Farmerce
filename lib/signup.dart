import 'package:farmerce/Consumer/ConsumerHome.dart';
import 'package:farmerce/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  int segmentedControlGroupValue = 0;

  final _formKey = new GlobalKey<FormState>();

  final TextEditingController _repeatPasswordController =
      TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  var errText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 12, 12, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Text(
              'Welcome To Farmerce',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 22,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: CupertinoSlidingSegmentedControl(
                  backgroundColor: Color.fromRGBO(30, 30, 30, 0.7),
                  thumbColor: Color.fromRGBO(70, 70, 70, 1),
                  children: <int, Widget>{
                    0: Container(
                      width: 80,
                      height: 20,
                      child: Center(
                        child: Text(
                          "Customer",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    1: Container(
                      width: 80,
                      height: 20,
                      child: Center(
                        child: Text(
                          "Farmer",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    2: Container(
                      width: 80,
                      height: 20,
                      child: Center(
                        child: Text(
                          "Business",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  },
                  groupValue: segmentedControlGroupValue,
                  onValueChanged: (i) {
                    setState(() {
                      segmentedControlGroupValue = i;
                    });
                  }),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(30, 30, 30, 0.9), width: 2),
                        color: Color.fromRGBO(30, 30, 30, 0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _emailController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              hintText: 'Email'),
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(30, 30, 30, 0.9), width: 2),
                        color: Color.fromRGBO(30, 30, 30, 0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              hintText: 'Password'),
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(30, 30, 30, 0.9), width: 2),
                        color: Color.fromRGBO(30, 30, 30, 0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _repeatPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              hintText: 'Repeat Password'),
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35),
            child: Text(
              errText,
              style: TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInView()));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text(
                  'Have an account? Sign In',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: MediaQuery.of(context).size.height * 0.016,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: new Material(
                child: new InkWell(
                  onTap: () async {
                    var username = _emailController.text;
                    var password = _passwordController.text;
                    var repeatPassword = _repeatPasswordController.text;

                    if (username != null &&
                        password != null &&
                        repeatPassword != null) {
                      if (password == repeatPassword) {
                        try {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: username, password: password)
                              .then((value) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInView()));
                          }).catchError((e) {
                            print("ERROR: " + e.message);
                            setState(() {
                              errText = e.message;
                            });
                          });
                        } catch (e) {
                          print(e);
                          setState(() {
                            errText = e.text;
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
                  child: new Container(
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.020,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                color: Colors.transparent,
              ),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: BoxDecoration(
                color: Colors.lightGreen[600],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          /*
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                _feedback,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 15.5),
              ),
            ),
          ),
          */
        ],
      ),
    );
  }
}
