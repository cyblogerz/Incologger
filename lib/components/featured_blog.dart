import 'package:flutter/material.dart';

Stack featuredElement(BuildContext context) {
  return Stack(children: <Widget>[
    Container(
      alignment: Alignment.bottomLeft,
      height: MediaQuery.of(context).size.height * 0.50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 75.0),
        child: Text(
          "Here is what you need to know about DigiCupid",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {},
              child: Icon(Icons.bookmark_add_outlined),
            ))),
    Positioned(
      bottom: 0,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12,
              ),
            ),
            Row(
              children: <Widget>[
                Text("Pranav Ajay"),
                Text("."),
                Text("6 min read"),
                Text("."),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Technology"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ]);
}
