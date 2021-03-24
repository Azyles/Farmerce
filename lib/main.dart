import 'package:farmerce/Consumer/ConsumerFarm.dart';
import 'package:farmerce/Consumer/ConsumerHome.dart';
import './Farmers/FarmerContracts.dart';
import 'package:flutter/material.dart';
import 'Farmers/Farmer.dart';

void main() {
  runApp(
      MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Example(),
    );
  }
}
