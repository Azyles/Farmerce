import 'package:flutter/material.dart';

class FarmerContracts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              'Contracts',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.grey),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Text(
              'Active Contracts',
              style: TextStyle(color: Colors.white),
            ),
            Expanded(
              flex: 1,
              child: ActiveContracts(),
            ),
            Text(
              'Live Contracts',
              style: TextStyle(color: Colors.white),
            ),
            Expanded(
              flex: 1,
              child: LiveContracts(),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveContracts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView(children: [
        ActiveContract(),
      ]),
    );
  }
}

class ActiveContract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text('testing'),
    );
  }
}

class LiveContracts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
