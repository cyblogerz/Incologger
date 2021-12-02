import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: CircleAvatar(
              radius: 16,
              
              backgroundColor: Colors.blueGrey,
            ),
          ),

        ],
        
        
      ),
      drawer: Drawer(
        
      ),
    );
  }
}