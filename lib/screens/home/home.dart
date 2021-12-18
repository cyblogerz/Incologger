import 'package:flutter/material.dart';
import 'package:incologger/components/blog_element.dart';
import 'package:incologger/components/featured_blog.dart';
import 'package:incologger/components/search_box.dart';
import 'package:incologger/models/blog_shrink_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: const CircleAvatar(
              radius: 16,
              backgroundColor: Colors.blueGrey,
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                featuredElement(context),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: blogShrinkData.length,
                    itemBuilder: (context, index) {
                      return BlogElement(
                        title: blogShrinkData[index].title,
                        likes: blogShrinkData[index].likes,
                        comments: blogShrinkData[index].comments,
                        views: blogShrinkData[index].views.toString(),
                        date: blogShrinkData[index].date,
                      );
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
