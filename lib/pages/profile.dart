import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mediumclone/Utils/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homepage.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Theme.of(context).cardColor,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: OutlineButton(
                textColor: Colors.green,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(4.0)),
                child: Text('Follow'),
                borderSide: BorderSide(
                    color: Colors.green, style: BorderStyle.solid, width: 1),
                onPressed: () {},
              ),
            ),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 96,
                    height: 96,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://banner2.kisspng.com/20190131/aob/kisspng-ad-blocking-adguard-computer-software-download-mob-5c537e57554f10.6046552315489757033494.jpg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Ali Anıl Koçak",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 6.0),
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Lorem ipsum dolor sit amet,  proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24.0),
                          child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.twitter),
                              SizedBox(
                                width: 8.0,
                              ),
                              Icon(FontAwesomeIcons.facebook),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Divider(
                      height: 2.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24.0),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Followed by Tarik Guney and Anil Kocak",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Divider(
                      height: 2.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("116 Following"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            height: 50.0,
                            width: 1.0,
                            color: Colors.black26,
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                          ),
                        ),
                        Text("576 Followers")
                      ],
                    ),
                  ),
                  TabBar(
                    labelColor: Colors.black54,
                    tabs: [
                      Tab(
                        text: "Profile",
                      ),
                      Tab(
                        text: "Claps",
                      ),
                      Tab(
                        text: "Highlight",
                      ),
                      Tab(
                        text: "Responses",
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Column(
                      children: <Widget>[
                        itemBlog(context, 2),
                        Divider(
                          height: 2.0,
                        ),
                        itemBlog(context, 3),
                        Divider(
                          height: 2.0,
                        ),
                        itemBlog(context, 1),
                        Divider(
                          height: 2.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
