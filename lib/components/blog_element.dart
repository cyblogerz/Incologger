import 'package:flutter/material.dart';
import 'package:incologger/screens/blog/blog_view.dart';

class BlogElement extends StatelessWidget {
  BlogElement({
   required this.title,required this.likes,required this.comments,
  }); 
  final String title;
  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder:(context) => BlogView(title: title) ));},
      child: Padding(
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
                  
                  Text(title),
                  Padding(
                    padding: const EdgeInsets.only(right:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          
                          children: <Widget>[
                          Text(likes.toString()),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,bottom: 2.0),
                            child: Icon(Icons.thumb_up),
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.only(right:50.0),
                          child: Row(children: <Widget>[
                            Text(comments.toString()),
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
      ),
    );
  }
}