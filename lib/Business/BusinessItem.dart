import 'dart:ui';

import 'package:blur_bottom_bar/blur_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemPurchase extends StatefulWidget {
  @override
  _ItemPurchaseState createState() => _ItemPurchaseState();
}

class _ItemPurchaseState extends State<ItemPurchase> {
  int _selectedIndex = 0;
  final List<String> farmName = <String>[
    'John Doe Farms',
    'John Doe Farms',
    'John Doe Farms',
  ];
  final List<String> listing = <String>[
    '100.10000',
    '100.10000',
    '100.10000',
  ];
  final List<String> price = <String>[
    '1.42',
    '1.52',
    '1.62',
  ];
  final List<String> change = <String>[
    '10',
    '15',
    '20',
  ];
  double _currentSliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: Colors.grey[900])),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            "Apple Contracts",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
          bottom: const TabBar(
            labelColor: Colors.lightGreen,
            unselectedLabelColor: Color.fromRGBO(71, 71, 71, 1),
            indicatorColor: Colors.green,
            tabs: <Widget>[
              Tab(
                text: "Mar 25",
              ),
              Tab(
                text: "Mar 26",
              ),
              Tab(
                text: "Mar 27",
              ),
              Tab(
                text: "Mar 28",
              ),
              Tab(
                text: "Mar 29",
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            TabBarView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      itemCount: farmName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet<void>(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              width: 0,
                                              color: Color.fromRGBO(
                                                  26, 26, 26, 1)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 300,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200
                                                            .withOpacity(0.6)),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.09,
                                                    width:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width /
                                                                3 -
                                                            25,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "1.45",
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      86,
                                                                      106,
                                                                      76,
                                                                      1),
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Text(
                                                          "Reccomended",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade400,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200
                                                            .withOpacity(0.6)),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.09,
                                                    width:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width /
                                                                3 -
                                                            25,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "1.35",
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      86,
                                                                      106,
                                                                      76,
                                                                      1),
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Text(
                                                          "Current",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade400,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200
                                                            .withOpacity(0.6)),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.09,
                                                    width:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width /
                                                                3 -
                                                            25,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "1.40",
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      86,
                                                                      106,
                                                                      76,
                                                                      1),
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Text(
                                                          "Average",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade400,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200
                                                            .withOpacity(0.6)),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.09,
                                                    width:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width /
                                                                3 -
                                                            25,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "2.6%",
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      86,
                                                                      106,
                                                                      76,
                                                                      1),
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Text(
                                                          "Average Chng",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade400,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200
                                                            .withOpacity(0.6)),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.09,
                                                    width:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width /
                                                                3 -
                                                            25,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "14",
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      86,
                                                                      106,
                                                                      76,
                                                                      1),
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Text(
                                                          "Bids",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade400,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200
                                                            .withOpacity(0.6)),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.09,
                                                    width:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width /
                                                                3 -
                                                            25,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "1.25",
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      86,
                                                                      106,
                                                                      76,
                                                                      1),
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Text(
                                                          "Starting",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade400,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Slider(
                                              value: _currentSliderValue,
                                              min: 0,
                                              max: 100,
                                              activeColor: Color.fromRGBO(
                                                  131, 194, 100, 1),
                                              divisions: 100,
                                              inactiveColor: Colors.grey[200],
                                              label: _currentSliderValue
                                                  .round()
                                                  .toString(),
                                              onChanged: (double value) {
                                                setState(() {
                                                  _currentSliderValue = value;
                                                });
                                              },
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color.fromRGBO(
                                                      131, 194, 100, 1)),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.07,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  50,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Place Bid",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade200,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              height: 70,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${farmName[index]}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'List ${listing[index]}',
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${price[index]}',
                                        style: TextStyle(
                                            color: Colors.lightGreen[700],
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${change[index]}%',
                                        style: TextStyle(
                                            color: Colors.lightGreen[800],
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Center(
                  child: Text('It\'s rainy here'),
                ),
                Center(
                  child: Text('It\'s sunny here'),
                ),
                Center(
                  child: Text('It\'s rainy here'),
                ),
                Center(
                  child: Text('It\'s sunny here'),
                ),
              ],
            ),
            Align(
                alignment: FractionalOffset.bottomCenter,
                //this is very important, without it the whole screen will be blurred
                child: ClipRect(
                  //I'm using BackdropFilter for the blurring effect
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 30.0,
                      sigmaY: 30.0,
                    ),
                    child: Opacity(
                      //you can change the opacity to whatever suits you best
                      opacity: 0.8,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: BottomNavigationBar(
                          showSelectedLabels: false,
                          showUnselectedLabels: false,
                          selectedItemColor: Color(0xff83C264),
                          unselectedItemColor: Color(0xffDBDBDB),
                          backgroundColor: Color.fromRGBO(21, 21, 21, 1),
                          items: <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.home),
                              ),
                              label: '',
                            ),
                            BottomNavigationBarItem(
                              icon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.person),
                              ),
                              label: '',
                            ),
                          ],
                          currentIndex: _selectedIndex,
                          onTap: (int index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
        /*bottomNavigationBar: BlurBottomView(
            bottomNavigationBarItems: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Home',
              )
            ],
            currentIndex: _selectedIndex,
            onIndexChange: (val) {}),
            */
      ),
    );
  }
}
