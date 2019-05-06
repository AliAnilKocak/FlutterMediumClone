import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(245, 245, 245, 245),
        child: ListView(
          children: <Widget>[
            new Container(
              child: new UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Ali Anıl Koçak",
                  style: new TextStyle(fontSize: 15.0, color: Colors.black),
                ),
                accountEmail: Text(
                  "See profile",
                  style: new TextStyle(fontSize: 15.0, color: Colors.grey),
                ),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://webkit.org/demos/srcset/image-1x.png"),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Home",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Audio",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Bookmarks",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Interests",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ),
            new Divider(
              height: 2.0,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Become a member",
                      style: TextStyle(fontSize: 16,     color: Color.fromARGB(245,2,158,116),),
                    ),
                  ),
                ],
              ),
            ),
            new Divider(
              height: 2.0,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "New Story",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Statistic",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Stories",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 32, left: 16),
              child: Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.medium),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Settings",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Help",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
