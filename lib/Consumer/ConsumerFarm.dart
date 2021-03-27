// Viewing farm info

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmerce/Consumer/ConsumerHome.dart';
import 'package:farmerce/Consumer/ConsumerPurchase.dart';
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
          body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("Farms")
                .doc(widget.farmID)
                .snapshots(),
            builder: (context, snap) {
              if (snap.hasData) {
                var data = snap.data.data();

                print(data);

                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 35),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConsumerHome()));
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
                            left: MediaQuery.of(context).size.width * 0.025,
                            top: 10),
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  data['imageURL'],
                                ))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 20),
                        child: Text(
                          data['name'],
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Text(
                          data['description'],
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
                            top: 20,
                            left: MediaQuery.of(context).size.width * 0.05),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 45,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConsumerPurchase(
                                        widget.farmID, data['name'])));
                          },
                          color: Color.fromRGBO(131, 194, 100, 1),
                          child: Text(
                            "Browse",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 20),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConsumerHome()));
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4),
                      child: Center(
                        child: Text(
                          "No Data",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ));
              }
            },
          )),
    );
  }
}
