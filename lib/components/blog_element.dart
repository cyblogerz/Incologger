import 'package:flutter/material.dart';

class BlogElement extends StatelessWidget {
  BlogElement({
   required this.title,required this.likes,required this.comments,
  }); 
  final String title;
  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               height: 100,
              width:100,
              decoration: BoxDecoration(color: Colors.teal,
              borderRadius: BorderRadius.circular(20)
             
              ),
              
            ),
          ),
          SizedBox(
            width: 10,
          ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              
              children: <Widget>[
                Text("05 mins read"),
                
                Text("Make design systems people want to use."),
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        
                        children: <Widget>[
                        Text("22.8k"),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,bottom: 2.0),
                          child: Icon(Icons.thumb_up),
                        )
                      ],),
                      Padding(
                        padding: const EdgeInsets.only(right:50.0),
                        child: Row(children: <Widget>[
                          Text("8k"),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Icon(Icons.comment),
                          ),
                          
                        ],),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ],
      ),
    );
  }
}