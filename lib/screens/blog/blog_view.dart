import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  const BlogView({ Key? key,required this.title }) : super(key: key);
  final String title;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
      
    );
  }
}