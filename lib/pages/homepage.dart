import 'package:flutter/material.dart';
import 'package:mediumclone/pages/blogdetail.dart';
import '../model/blog.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, position) => GestureDetector(
            child: Column(
              children: <Widget>[
                Divider(
                  height: 10.0,
                ),
                itemBlog(context, position)
              ],
            ),
            onTap: () {
              Navigator.push<bool>(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => BlogDetail(),
                ),
              );
            },
          ),
    );
  }
}

  Widget itemBlog(BuildContext context, int position) {
  return Container(
    padding: EdgeInsets.only(bottom: 12.0, left: 8.0, right: 10.0),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.bottomLeft,
          child: Text(
            dummyData[position].category,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      dummyData[position].title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      maxLines: 3,
                    ),
                  ),
                  Text(
                    dummyData[position].description,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Container(
                height: 84,
                width: 84,
                child: Image.network(
                  dummyData[position].image,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 8.0, left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 4.0),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      dummyData[position].author,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        dummyData[position].date,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        dummyData[position].readTime,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.bookmark_border),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
