import 'package:flutter/material.dart';


class BlogShrink{
  final String title;
  final int likes;
  final int comments;
  BlogShrink({required this.title,required this.likes,required this.comments});
  
}

List<BlogShrink>blogShrinkData = [
  BlogShrink(title: "Make systems people want to use",likes: 500,comments: 10),
  BlogShrink(title: "Make systems people want to use",likes: 500,comments: 10),
  BlogShrink(title: "Make systems people want to use",likes: 500,comments: 10),
  BlogShrink(title: "Make systems people want to use",likes: 500,comments: 10),
];
         