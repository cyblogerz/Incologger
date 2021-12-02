import 'package:flutter/material.dart';

class BlogElement extends StatelessWidget {
  const BlogElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        

      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
        Container(
          child: Column(
            children: <Widget>[
              Text("05 mins read"),
              Text("Make design systems people want to use."),
              Row(
                children: <Widget>[
                  Container(child:Row(children: <Widget>[
                    Text("22.8k"),
                    Icon(Icons.thumb_up)
                  ],)),
                  Container(child:Row(children: <Widget>[
                    Text("8k"),
                    Icon(Icons.comment)
                  ],)),
                  
                ],
              ),
            ],
          ),

        ),
        ],
      ),
    );
  }
}