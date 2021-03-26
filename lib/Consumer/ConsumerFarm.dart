// Viewing farm info

import 'package:flutter/material.dart';

class FarmViewScreen extends StatefulWidget {
  var farmID = "";

  FarmViewScreen(id) {
    farmID = id;
  }


  @override
  _FarmViewScreenState createState() => _FarmViewScreenState();
}

class _FarmViewScreenState extends State<FarmViewScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.025, top: 10),
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://cdn.dribbble.com/users/3949861/screenshots/14387811/media/8ac916cc3132b0d6f35a77605588671d.jpg?compress=1&resize=1000x750',
                        ))),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  "John Doe Farms",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta justo ac auctor luctus. Praesent volutpat facilisis dolor nec blandit. Integer eu posuere nisl. Sed a finibus ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.425,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Color.fromRGBO(34, 34, 34, 1),
                        child: Text(
                          "Delivery",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.425,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Color.fromRGBO(34, 34, 34, 1),
                        child: Text(
                          "Details",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 20, left: MediaQuery.of(context).size.width * 0.05),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 45,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color.fromRGBO(131, 194, 100, 1),
                  child: Text(
                    "Browse",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
