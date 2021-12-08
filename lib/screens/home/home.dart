import 'package:flutter/material.dart';
import 'package:incologger/components/blog_element.dart';
import 'package:incologger/components/search_box.dart';
import 'package:incologger/models/blog_shrink_model.dart';


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[
                
                const Text("This is where we tell stories",style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 25,
                ),
                SearchBox(),
                ListView.builder(
                  shrinkWrap: true, 
                  physics: ScrollPhysics(),
                  itemCount: blogShrinkData.length,
                  itemBuilder: (context,index){
                  return BlogElement(title: blogShrinkData[index].title, likes: blogShrinkData[index].likes, comments: blogShrinkData[index].comments);
                })
              ],
            ),
          ),
          // BlogElement(),
          
          
        ],
        
      ),
      
    );
  }

 
}

