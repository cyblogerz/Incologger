 import 'package:flutter/material.dart';

 Widget SearchBox() {
    return Container(
      padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  <Widget>[
                  
                  Row(
                    children: [
                      Icon(Icons.search),
                      Text("Search Blogs"),
                    ],
                  ),
                  Icon(Icons.filter_list_sharp)
                ],
              )
            );
  }