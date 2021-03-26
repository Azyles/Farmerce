import 'package:farmerce/Consumer/ConsumerHome.dart';
import 'package:farmerce/Consumer/consumerLogin.dart';
import 'package:flutter/material.dart';

class ChooseAccountScreen extends StatefulWidget {
  ChooseAccountScreen({Key key}) : super(key: key);

  @override
  _ChooseAccountScreenState createState() => _ChooseAccountScreenState();
}

class _ChooseAccountScreenState extends State<ChooseAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              RaisedButton(
                child: Text("Customer Portal"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConsumerLogin()));
                },
              ),
              RaisedButton(
                child: Text("Farmer Portal"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConsumerHome()));
                },
              ),
              RaisedButton(
                child: Text("Business Portal"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConsumerHome()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
