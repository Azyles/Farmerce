// Buy item

import 'package:flutter/material.dart';

class ConsumerPurchase extends StatefulWidget {
  ConsumerPurchase({Key key}) : super(key: key);

  @override
  _ConsumerPurchaseState createState() => _ConsumerPurchaseState();
}

class _ConsumerPurchaseState extends State<ConsumerPurchase> {
  List checks = [true, false, true, false, true];

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 0, bottom: 50),
                  child: Text(
                    "John Doe Farms",
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
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin:
                            EdgeInsets.only(bottom: 15, left: 10, right: 10),
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.90,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(34, 34, 34, 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: 45,
                                  height: 45,
                                  child: Image.network(
                                      'https://peters-orchards.com/sites/default/files/Apple_Red_D_-Silho_1.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 13),
                                        child: Text(
                                          "Matsu Apple",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "\$23.22 per pound",
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
                      onPressed: () {},
                      color: Colors.green,
                      child: Text(
                        "Purchase",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
