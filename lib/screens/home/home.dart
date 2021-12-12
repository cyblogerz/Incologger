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
                
               
              
                Stack(children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height*0.50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: FloatingActionButton(onPressed: (){},child: Icon(Icons.bookmark_add),backgroundColor: Colors.black,),
                    ))
                ]),
                ListView.builder(
                  shrinkWrap: true, 
                  physics: ScrollPhysics(),
                  itemCount: blogShrinkData.length,
                  itemBuilder: (context,index){
                  return BlogElement(title: blogShrinkData[index].title, likes: blogShrinkData[index].likes, comments: blogShrinkData[index].comments ,views:blogShrinkData[index].views.toString() , date: blogShrinkData[index].date,);
                })
              ],
            ),
          ),
          // BlogElement()
          
          
          
        ],
        
      ),
      
    );
  }

 
}

