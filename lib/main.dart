import 'package:dashboard/bottombar.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Column(children: [
          Text(
            "Dashboard",

            style: TextStyle(color: Colors.black,fontSize: 20.0),
          ),
          Text(
            "Your finances are looking good",
            style: TextStyle(color: Colors.black,fontSize: 15.0),
          ),
        ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            onPressed: () {},
          )
        ],
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            topArea(),
            displayAccoutList(),
            MyBottomBarDemo(),
          ],
        ),
      ),
    );
  }
}

Card topArea() => Card(
      margin: EdgeInsets.all(10.0),
      elevation: 1.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0))),
      child: Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  colors: [Color(0xFFE0E0E0), Color(0xFFE0E0E0)])),
          padding: EdgeInsets.all(5.0),
          // color: Color(0xFF015FFF),
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(r"Spending",
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(r"*" "Rent",
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(r"*" "Internet",
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(r"*" "Food",
                      style: TextStyle(color: Colors.white, fontSize: 15.0)),
                ),
              ),
              SizedBox(height: 2.0),
            ],
          )),
    );



displayAccoutList() {
  return Container(
    margin: EdgeInsets.all(15.0),
    child: Column(
      children: <Widget>[
        accountItems("ACCOUNTS", r"SEA ALL", "", "",
            oddColour: const Color(0xFFF7F7F9)),
        accountItems("Cash", r"$9,450", "1 account", "5m"),
        accountItems("Credit Cards", r"- $1,321", "2 cards", "5m",
            oddColour: const Color(0xFFF7F7F9)),
        accountItems("Investments", r" $57,095", "3 accounts", "5m"),
      ],
    ),
  );
}

Container accountItems(
        String item, String charge, String dateString, String type,
        {Color oddColour = Colors.white}) =>
    Container(
      decoration: BoxDecoration(color: oddColour),
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(item, style: TextStyle(fontSize: 16.0)),
              Text(charge, style: TextStyle(fontSize: 16.0))
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(dateString,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0)),
              Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
            ],
          ),
        ],
      ),
    );
