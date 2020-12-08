import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Alerts",
          style: TextStyle(color: Colors.black),
        ),
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
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            AlertListview(),
          ],
        ),
      ),
    );
  }
}

AlertListview() {
  return Container(
    margin: EdgeInsets.all(15.0),
    child: Column(
      children: <Widget>[
        alertItems("TRANSACTIONS", r"SEA ALL", "", "",
            oddColour: const Color(0xFFF7F7F9)),
        alertItems("Starbucks", r"$5.04", "Coffee", "3m"),
        alertItems("Starbucks", r"$5.04", "Coffee", "3m",
            oddColour: const Color(0xFFF7F7F9)),
        alertItems("Starbucks", r"$5.04", "Coffee", "3m"),
      ],
    ),
  );
}

Container alertItems(
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
