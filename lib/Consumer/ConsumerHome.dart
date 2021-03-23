// Home page
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
                    decoration: InputDecoration(
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
              ListView.builder(
                itemCount: x.length,
                itemBuilder: (index, context) {
                  return Container(
                    child: Stack(
                      children: [
                        
                      ],
                    ),
                    
                  );
                },
              )
            ],
          )),
    );
  }
}
