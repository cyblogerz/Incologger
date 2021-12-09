import 'package:flutter/material.dart';


class BlogShrink{
  BlogShrink({required this.title,required this.likes,required this.comments, required this.date , required this.views,
  }); 
  final String title;
  final int views;
  final String date;
  final int likes;  
  final int comments;

}

List<BlogShrink>blogShrinkData = [
  BlogShrink(title: "Make systems people want to use",likes: 500,comments: 10,views: 1000,date: "Jan 16,2022" ),
  BlogShrink(title: "Make systems people want to use",likes: 500,comments: 10,views: 1000,date: "Jan 16,2022"),
  BlogShrink(title: "Make systems people want to use",likes: 500,comments: 10,views: 1000,date: "Jan 16,2022"),
  BlogShrink(title: "Make systems people want to use",likes: 500,comments: 10,views: 1000,date: "Jan 16,2022"),
];
         