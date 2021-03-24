import 'package:flutter/material.dart';

class BusinessHome extends StatefulWidget {
  @override
  _BusinessHomeState createState() => _BusinessHomeState();
}

class _BusinessHomeState extends State<BusinessHome> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Center(
              child: Text(
            "Home",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Active Contracts",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Flexible(
              child: Container(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: <Widget>[
                Container(
                    height: 70,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red.withOpacity(0.20)),
                          height: 55,
                          width: 55,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.network(
                                "https://jonamacorchard.com/new/wp-content/uploads/2018/04/jonamac-orchard-zestar_258x258_acf_cropped.png"),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              "Apples",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              "1.34 x1000",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            )),
                        Spacer(),
                        Icon(
                          Icons.arrow_right_rounded,
                          color: Colors.grey.shade800,
                          size: 30,
                        )
                      ],
                    )),
                Container(
                    height: 70,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red.withOpacity(0.20)),
                          height: 55,
                          width: 55,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.network(
                                "https://jonamacorchard.com/new/wp-content/uploads/2018/04/jonamac-orchard-zestar_258x258_acf_cropped.png"),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              "Apples",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              "1.34 x145",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            )),
                        Spacer(),
                        Icon(
                          Icons.arrow_right_rounded,
                          color: Colors.grey.shade800,
                          size: 30,
                        )
                      ],
                    )),
              ],
            ),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Bids",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Flexible(
              child: Container(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: <Widget>[
                Container(
                    height: 70,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red.withOpacity(0.20)),
                          height: 55,
                          width: 55,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.network(
                                "https://jonamacorchard.com/new/wp-content/uploads/2018/04/jonamac-orchard-zestar_258x258_acf_cropped.png"),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              "Apples",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              "1.34",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            )),
                        Spacer(),
                        Icon(
                          Icons.arrow_right_rounded,
                          color: Colors.grey.shade800,
                          size: 30,
                        )
                      ],
                    )),
                Container(
                    height: 70,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red.withOpacity(0.20)),
                          height: 55,
                          width: 55,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.network(
                                "https://jonamacorchard.com/new/wp-content/uploads/2018/04/jonamac-orchard-zestar_258x258_acf_cropped.png"),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              "Apples",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              "1.34",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            )),
                        Spacer(),
                        Icon(
                          Icons.arrow_right_rounded,
                          color: Colors.grey.shade800,
                          size: 30,
                        )
                      ],
                    )),
              ],
            ),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade900.withOpacity(0.6)),
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "15k",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Spending",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade900.withOpacity(0.6)),
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "700k",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Total Spent",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade900.withOpacity(0.6)),
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "78%",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Bid Success",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade900.withOpacity(0.6)),
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Active Bids",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade900.withOpacity(0.6)),
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Contracts",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade900.withOpacity(0.6)),
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "500",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Contracts Done",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(131, 194, 100, 1)),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width / 2 - 25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View Contracts",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(115, 162, 255, 1)),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width / 2 - 25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Purchase",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 10),
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
    );
  }
}
