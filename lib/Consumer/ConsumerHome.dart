// Home page
import 'dart:ui';

import 'package:farmerce/Consumer/ConsumerFarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConsumerHome extends StatefulWidget {
  ConsumerHome({Key key}) : super(key: key);

  @override
  _ConsumerHomeState createState() => _ConsumerHomeState();
}

class _ConsumerHomeState extends State<ConsumerHome> {
  //Global Variables
  List x = [1, 2, 3];

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
              StreamBuilder(
                stream: FirebaseFirestore,
                builder: (context, snap) {

                },
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: x.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FarmViewScreen("farmid")));
                      },
                      child: Container(
                        margin:
                            EdgeInsets.only(bottom: 20, left: 10, right: 10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://cdn.dribbble.com/users/3949861/screenshots/14387811/media/8ac916cc3132b0d6f35a77605588671d.jpg?compress=1&resize=1000x750'))),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 200),
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
                                              top: 10, left: 10),
                                          child: Text("20 mi away",
                                              style: TextStyle(
                                                  color: Colors.grey[100])),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(top: 5, left: 10),
                                          child: Text(
                                            "John Doe Farms",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                child: Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
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
              ),
            ],
          )),
    );
  }
}
