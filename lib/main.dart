import 'package:farmerce/Consumer/ConsumerFarm.dart';
import 'package:farmerce/Consumer/ConsumerHome.dart';
import 'package:farmerce/Consumer/ConsumerPurchase.dart';
import 'package:farmerce/chooseAccountType.dart';
import 'package:firebase_core/firebase_core.dart';
import './Farmers/FarmerContracts.dart';
import 'package:flutter/material.dart';
import 'Business/BusinessHome.dart';
import 'Business/BusinessItem.dart';
import 'Farmers/Farmer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: ChooseAccountScreen(),
    );
  }
}
