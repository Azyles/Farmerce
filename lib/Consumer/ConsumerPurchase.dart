// Buy item

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmerce/Consumer/ConsumerHome.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ConsumerPurchase extends StatefulWidget {
  var farmID = '';
  var farmName = '';

  ConsumerPurchase(id, name) {
    farmID = id;
    farmName = name;
  }

  @override
  _ConsumerPurchaseState createState() => _ConsumerPurchaseState();
}

class _ConsumerPurchaseState extends State<ConsumerPurchase> {
  List checks = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("Farms")
                .doc(widget.farmID)
                .collection("Items")
                .snapshots(),
            builder: (context, snap) {
              if (snap.hasData) {
                var data = [];

                snap.data.docs.forEach((doc) {
                  data.add(doc.data());
                  checks.add(false);
                });
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 0, bottom: 50),
                          child: Text(
                            widget.farmName,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Center(
                            child: Container(
                          height: MediaQuery.of(context).size.height * 0.68,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                    bottom: 15, left: 10, right: 10),
                                height: 70,
                                width: MediaQuery.of(context).size.width * 0.90,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(34, 34, 34, 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          width: 45,
                                          height: 45,
                                          child: Image.network(
                                              data[index]['imageURL']),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 13),
                                                child: Text(
                                                  data[index]['itemName'],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 5),
                                                child: Text(
                                                  data[index]['price'],
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Checkbox(
                                        activeColor: Colors.green,
                                        value: checks[index],
                                        onChanged: (t) {
                                          checks[index] = t;

                                          setState(() {});
                                        })
                                  ],
                                ),
                              );
                            },
                          ),
                        )),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 50,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onPressed: () {
                                Alert(
                                  context: context,
                                  type: AlertType.success,
                                  title: "Order Confirmed",
                                  desc: "Your order has been confirmed",
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "Ok",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ConsumerHome()));
                                      },
                                      color: Color.fromRGBO(0, 179, 134, 1.0),
                                    ),
                                  ],
                                ).show();
                              },
                              color: Color.fromRGBO(131, 194, 100, 1),
                              child: Text(
                                "Purchase",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          )),
                    ],
                  ),
                );
              } else {
                return Container(
                  child: Center(
                    child: Text(
                      "No Items",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                );
              }
            },
          )),
    );
  }
}
