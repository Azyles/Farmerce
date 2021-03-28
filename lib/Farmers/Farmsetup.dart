import 'package:flutter/material.dart';

class Farmsetup extends StatefulWidget {
  @override
  _FarmsetupState createState() => _FarmsetupState();
}

class _FarmsetupState extends State<Farmsetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Center(
              child: Text(
            "Setup",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(50, 50, 50, 1), width: 5),
                  color: Color.fromRGBO(30, 30, 30, 0.4),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.dribbble.com/users/1803663/screenshots/14762933/media/d22e6a9bb1e4ec8963842cff3907e8be.jpg?compress=1&resize=1000x750"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.7,
              child: Center(
                  child: Icon(
                Icons.add,
                color: Colors.black.withOpacity(0.5),
                size: 60,
              )),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(30, 30, 30, 0.9), width: 2),
                    color: Color.fromRGBO(30, 30, 30, 0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      //controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          hintText: 'Farm Name'),
                      validator: (value) {
                        if (value == null || value == '') {
                          return 'Name cannot be blank';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.07,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(30, 30, 30, 0.9), width: 2),
                    color: Color.fromRGBO(30, 30, 30, 0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      //controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          hintText: 'Farm Address'),
                      validator: (value) {
                        if (value == null || value == '') {
                          return 'Address cannot be blank';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.07,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(30, 30, 30, 0.9), width: 2),
                    color: Color.fromRGBO(30, 30, 30, 0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      //controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          hintText: 'Farm Description'),
                      validator: (value) {
                        if (value == null || value == '') {
                          return 'Description cannot be blank';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.07,
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Center(
            child: Container(
              child: new Material(
                child: new InkWell(
                  onTap: () async {},
                  child: new Container(
                    child: Center(
                      child: Text(
                        'Register Farm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.020,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                color: Colors.transparent,
              ),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.lightGreen[600],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
