import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("65,224"),
        actions: [
          Icon(Icons.add),
          Icon(Icons.settings),
        ],
      ),
    );

  }
}

AccoutList() {
  return Container(
    margin: EdgeInsets.all(15.0),
    child: Column(
      children: <Widget>[
        accountList("CASH", r"", "", "",
            oddColour: const Color(0xFFF7F7F9)),
        accountList(
            "All exclusive chequing plan", r"$9,450", "TD Canada", "5m"),
        accountList("Net Total", r"$9,450", "1 account", "5m",
            oddColour: const Color(0xFFF7F7F9)),
        accountList(
            "CREDIT CARDS", r"", "", ""),
        accountList( "Cash back Visa Infinite", r"$207", "TD Canada", "5m",
            oddColour: const Color(0xFFF7F7F9)),
        accountList(
            "Visa infinite Avion", r"$1321", "RBC", "5m"),
        accountList("Net Total", r"$9,450", "1 account", "5m",
            oddColour: const Color(0xFFF7F7F9)),
      ],
    ),
  );
}


Container accountList(
    String item, String charge, String dateString, String type,
    {Color oddColour = Colors.white}) =>
    Container(
      decoration: BoxDecoration(color: oddColour),
      padding:
      EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
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

