import 'package:flutter/material.dart';
import 'package:incologger/screens/blog/blog_view.dart';

class BlogElement extends StatelessWidget {
  BlogElement({
   required this.title,required this.likes,required this.comments, required this.date , required this.views,
  }); 
  final String title;
  final String views;
  final String date;
  final int likes;  
  final int comments;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder:(context) => BlogView(title: title) ));},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
              boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 1,
        blurRadius: 10,
        offset: Offset(0,10), // changes position of shadow
      ),
    ],

          color: Colors.white,

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                   height: 75,
                  width:75,
                  decoration: BoxDecoration(color: Colors.teal,
                  borderRadius: BorderRadius.circular(15)
                 
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
                
                    
                    Text(title),
                    Text(date),
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
      ),
    );
  }
}