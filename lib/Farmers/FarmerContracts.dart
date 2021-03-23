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
          backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Active Contracts',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ActiveContractList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Live Contracts',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: LiveContractList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveContractList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ActiveContract(
            name: 'Apples',
            amount: 6832,
            number: 2.000,
            days: 7,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
          ActiveContract(
            name: 'Apples',
            amount: 6832,
            number: 2.000,
            days: 7,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
          ActiveContract(
            name: 'Apples',
            amount: 6832,
            number: 2.000,
            days: 7,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
          ActiveContract(
            name: 'Apples',
            amount: 6832,
            number: 2.000,
            days: 7,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
          ActiveContract(
            name: 'Apples',
            amount: 6832,
            number: 2.000,
            days: 7,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
        ],
      ),
    );
  }
}

class ActiveContract extends StatelessWidget {
  final String name;
  final int amount;
  final double number;
  final int days;
  final String imgUrl;

  ActiveContract({this.name, this.amount, this.number, this.days, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff181818),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imgUrl,
              width: 55,
              height: 55,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: MediaQuery.of(context).size.width*0.16,
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          SizedBox(width: 15),
          Text(
            '\$' + amount.toString(),
            style: TextStyle(
              color: Color(0xff727272),
              fontSize: 10,
            ),
          ),
          SizedBox(width: 30),
          Text(
            number.toString(),
            style: TextStyle(
              color: Color(0xffB9B9B9),
              fontSize: 13,
            ),
          ),
          SizedBox(width: 30),
          Text(
            days.toString() + " Days",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class LiveContractList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          LiveContract(
            name: 'Banana',
            days: 7,
            bidders: 6,
            amount: 6832,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
          LiveContract(
            name: 'Banana',
            days: 7,
            bidders: 6,
            amount: 6832,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
          LiveContract(
            name: 'Banana',
            days: 7,
            bidders: 6,
            amount: 6832,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
          LiveContract(
            name: 'Banana',
            days: 7,
            bidders: 6,
            amount: 6832,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
          LiveContract(
            name: 'Banana',
            days: 3,
            bidders: 6,
            amount: 3832,
            imgUrl:
                "https://www.sustainabilityconsortium.org/wp-content/uploads/2017/10/news-cool-farm-alliance.jpg",
          ),
        ],
      ),
    );
  }
}

class LiveContract extends StatelessWidget {
  final String name;
  final int days;
  final int bidders;
  final double amount;
  final String imgUrl;
  LiveContract({this.name, this.days, this.bidders, this.amount, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff181818),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imgUrl,
              width: 55,
              height: 55,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: MediaQuery.of(context).size.width*0.15,
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          SizedBox(width: 18),
          Text(
            days.toString() + " Days",
            style: TextStyle(
              color: days <= 3 ? Color(0xff73A2FF) : Color(0xffB9B9B9),
              fontSize: 12,
            ),
          ),
          SizedBox(width: 20),
          Text(
            bidders.toString() + " bidders",
            style: TextStyle(
              color: Color(0xff727272),
              fontSize: 10,
            ),
          ),
          SizedBox(width: 20),
          Text(
            '\$' + amount.toString(),
            style: TextStyle(
              color: amount > 5000 ? Color(0xff73A2FF) : Color(0xffFF8159),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
