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
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        actions: [
          const Padding(
            padding: EdgeInsets.only(right:8.0),
            child: const CircleAvatar(
              radius: 16,
              
              backgroundColor: Colors.blueGrey,
            ),
          ),

        ],
        
        
      ),
      drawer: const Drawer(
        
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
                    alignment: Alignment.bottomLeft,
                    height: MediaQuery.of(context).size.height*0.50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    
                      
                        child: Padding(
                          padding: const EdgeInsets.only(left:32.0,right: 32.0,bottom: 75.0),
                          child: Text("Here is what you need to know about DigiCupid",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                          ),),
                          
                        ),
                      ),
                  
                  
                   Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("See More"),style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                    ))),

                    Positioned(
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Row(
                          
                          children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right:16),
                          child: CircleAvatar(backgroundColor: Colors.black,radius: 12,),
                        ),
                        Row(
                          
                            children: <Widget>[
                              Text("Pranav Ajay"),
                              Text("."),
                              Text("6 min read"),
                              Text("."),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal:10,vertical: 3),
                                  decoration: BoxDecoration(
                                    color:Colors.grey,
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Text("Technology"),
                                ),
                              ),

                              
                        
                            ],
                            
                          ),


                        
                    ],),
                      ),),

                  
                  
                ]),
                 
                
                ListView.builder(
                  shrinkWrap: true, 
                  physics: const ScrollPhysics(),
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

