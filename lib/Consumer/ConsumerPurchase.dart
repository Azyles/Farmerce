// Buy item

import 'package:flutter/material.dart';

class ConsumerPurchase extends StatefulWidget {
  ConsumerPurchase({Key key}) : super(key: key);

  @override
  _ConsumerPurchaseState createState() => _ConsumerPurchaseState();
}

class _ConsumerPurchaseState extends State<ConsumerPurchase> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                Container(
                  child: Text("John Doe Farms", style: TextStyle(),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
