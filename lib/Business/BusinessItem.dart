import 'dart:ui';

import 'package:blur_bottom_bar/blur_bottom_bar.dart';
import 'package:flutter/material.dart';

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
                          child: Container(
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
