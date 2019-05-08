import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

class BlogDetail extends StatelessWidget {
  String html = '<body>Hello world! <a href="www.html5rocks.com">HTML5 rocks!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Theme.of(context).cardColor,
        title: GestureDetector(
          onTap: () {
            print("Navigate to published page");
          },
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://miro.medium.com/max/154/1*0dQNpR0DrpaZfMM8mXsvig.png"),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'PUBLISHED IN',
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                  ),
                  Visibility(
                    visible: true,
                    child: Text(
                      'FlutterCommunity',
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12.0, right: 8),
            child: Text(
              "Refrigator Ladies: The First Computer Programmers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12.0, right: 8),
            child: Text(
              "The story of ENIAC, the first completly electronic computer and the woman who made it possible",
              style: TextStyle(color: Colors.black45, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12.0, right: 8),
            child: Row(
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://banner2.kisspng.com/20190131/aob/kisspng-ad-blocking-adguard-computer-software-download-mob-5c537e57554f10.6046552315489757033494.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Ali Anıl Koçak",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "08/03/2018 - 11 Min Read",
                  style: TextStyle(color: Colors.black45),
                ),
                new HtmlView(
                  data: html,
                  // optional, type String
                ),
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.access_time),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.bookmark_border),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            SizedBox(
              width: 192,
            ),
            Icon(Icons.text_fields),
          ],
        ),
      )),
    );
  }
}
