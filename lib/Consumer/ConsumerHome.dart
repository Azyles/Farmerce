// Home page
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmerce/Consumer/ConsumerFarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

import 'package:geolocator/geolocator.dart';

class ConsumerHome extends StatefulWidget {
  ConsumerHome({Key key}) : super(key: key);

  @override
  _ConsumerHomeState createState() => _ConsumerHomeState();
}

class _ConsumerHomeState extends State<ConsumerHome> {
  //Global Variables

  double calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  var location = null;

  Future getLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        location = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Center(
                  child: Text(
                    "Local Farms",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(38, 38, 38, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("Farms")
                      .snapshots(),
                  builder: (context, snap) {
                    if (snap.hasData) {
                      var data = [];

                      snap.data.docs.forEach((doc) {
                        data.add({"id": doc.id, "value": doc.data()});
                      });

                      return Container(
                        margin: EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            var locationString = 'Loading';

                            if (location != null) {
                              var latitude = location.latitude;
                              var longitude = location.longitude;

                              locationString = calculateDistance(
                                          latitude,
                                          longitude,
                                          data[index]['value']['latitude']
                                            ,
                                          data[index]['value']['longitude']
                                              )
                                      .toStringAsFixed(1) +
                                  " mi away";

                              print(locationString.toString() + " miles away");
                            } else {
                              locationString = "No location";
                            }
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FarmViewScreen(data[index]["id"])));
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: 20, left: 10, right: 10),
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            data[index]['value']['imageURL']))),
                                child: Stack(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 15, top: 200),
                                      child: ClipRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 10.0,
                                            sigmaY: 10.0,
                                          ),
                                          child: Container(
                                            height: 80,
                                            width: 180,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: 15, left: 10),
                                                  child: Text(locationString,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[300],
                                                          fontSize: 13)),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: 1, left: 10),
                                                  child: Text(
                                                    data[index]['value']
                                                        ['name'],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 10),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 5),
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .yellow[600],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 5),
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .yellow[600],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 5),
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .yellow[600],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 5),
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .yellow[600],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 5),
                                                        child: Icon(
                                                          Icons.star_border,
                                                          color: Colors
                                                              .yellow[600],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Container(
                        child: Center(
                          child: Text(
                            "No Farms",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      );
                    }
                  }),
            ],
          )),
    );
  }
}
