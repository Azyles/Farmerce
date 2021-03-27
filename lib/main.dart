import 'package:farmerce/Consumer/ConsumerFarm.dart';
import 'package:farmerce/Consumer/ConsumerHome.dart';
import 'package:farmerce/Consumer/ConsumerPurchase.dart';
import 'package:farmerce/chooseAccountType.dart';
import 'package:firebase_core/firebase_core.dart';
import './Farmers/FarmerContracts.dart';
import 'package:flutter/material.dart';
import 'Business/BusinessHome.dart';
import 'Business/BusinessItem.dart';
import 'Farmers/Farmer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: SignUpView(),
    );
  }
}


class SignInView extends StatelessWidget {
  final _formKey = new GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(8, 8, 8, 1),
        body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 46,
                  fontWeight: FontWeight.w500),
            ),
          ),
          
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[700],width: 2),
                    color: Color.fromRGBO(24, 24, 24, 0),
                    
                    borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none, hintText: 'Email'),
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'Email cannot be blank';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[700],width: 2),
                    color: Color.fromRGBO(24, 24, 24, 0),
                    borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                           style: TextStyle(color: Colors.white),
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                             hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none, hintText: 'Password'),
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'Password cannot be blank';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: Container(
              child: new Material(
                child: new InkWell(
                  onTap: () async {
                    if (_formKey.currentState.validate()) {
                      
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ConsumerHome()));
                    }
                  },
                  child: new Container(
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                color: Colors.transparent,
              ),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.deepPurple[400],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUpView()));
        },
        backgroundColor: Colors.lightGreen[700],child: Icon(Icons.wb_cloudy),),
        );
  }
}



class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  final _formKey = new GlobalKey<FormState>();

  
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 8, 8, 1),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
            child: Text(
              'Register',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 46,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[700], width: 2),
                        color: Color.fromRGBO(24, 24, 24, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _usernameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                              hintText: 'UserName'),
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'UserName cannot be blank';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[700], width: 2),
                        color: Color.fromRGBO(24, 24, 24, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                              hintText: 'Email'),
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'Email cannot be blank';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[700], width: 2),
                        color: Color.fromRGBO(24, 24, 24, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                              hintText: 'Password'),
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'Password cannot be blank';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: Container(
              child: new Material(
                child: new InkWell(
                  onTap: () async {
                    if (_formKey.currentState.validate()) {
                      
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ConsumerHome()));
                    }
                  },
                  child: new Container(
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                color: Colors.transparent,
              ),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.deepPurple[400],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignInView()));
        },
        backgroundColor: Colors.lightGreen[700],
        child: Icon(Icons.wb_cloudy),
      ),
    );
  }
}