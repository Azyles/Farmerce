import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmerce/Farmers/FarmerAddContract.dart';
import 'package:farmerce/Farmers/Farmsetup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FarmerHome extends StatefulWidget {
  @override
  _FarmerHomeState createState() => _FarmerHomeState();
}

class _FarmerHomeState extends State<FarmerHome> {
  int _selectedIndex = 0;

  final FirebaseAuth auth = FirebaseAuth.instance;

  var current = 0;

  @override
  Widget build(BuildContext context) {
    print(auth.currentUser.email);
    return Scaffold(
      backgroundColor: Colors.black,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("Farms")
            .where("owner", isEqualTo: auth.currentUser.email)
            .snapshots(),
        builder: (context, snap) {
          if (snap.hasData) {
            var data;

            snap.data.docs.forEach((doc) {
              data = doc;
              print(doc.data());
            });

            if (data != null) {
              return ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Center(
                      child: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w300),
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
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("Contracts")
                        .where("owner", isEqualTo: auth.currentUser.email)
                        .snapshots(),
                    builder: (context, snap) {
                      if (snap.hasData) {
                        var data = [];

                        snap.data.docs.forEach((doc) {
                          data.add(doc.data());
                        });

                        if (data.length == 0) {
                          return Container(
                            child: Center(
                              child: Text(
                                "No Active Contracts",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          );
                        } else {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: data.length,
                              itemBuilder: (context, x) {
                                return Flexible(
                                    child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView(
                                    shrinkWrap: true,
                                    physics: BouncingScrollPhysics(),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    children: <Widget>[
                                      Container(
                                          height: 70,
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    color: Colors.orange
                                                        .withOpacity(0.2)),
                                                height: 55,
                                                width: 55,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Image.network(
                                                      data[x]['imageURL']),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 25),
                                                  child: Text(
                                                    data[x]["item"],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w300),
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
                                ));
                              },
                            ),
                          );
                        }
                      } else {
                        return Container(
                          child: Center(
                            child: Text(
                              "No Active Contracts",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        );
                      }
                    },
                  ),
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
                      physics: BouncingScrollPhysics(),
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
                                    padding: EdgeInsets.only(left: 25),
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
                                      "5%",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      "15 bids",
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
                                    padding: EdgeInsets.only(left: 25),
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
                                      "7%",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      "15 bids",
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
                                "Average Income",
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
                                "Total Earned",
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
                                "Success",
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
                                "Live Contracts",
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
                                "Completed",
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AddContract(data['name'])));
                          },
                          child: Container(
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
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AddContract(data['name'])));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(115, 162, 255, 1)),
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Create",
                                  style: TextStyle(
                                      color: Colors.grey.shade200,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            } else {
              return Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "No Farms",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Create a farm by pressing the button below",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        color: Colors.green,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Farmsetup()));
                        },
                        child: Text(
                          "Create Farm",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          } else {
            return Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "No Farms",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            );
          }
        },
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
