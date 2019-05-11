import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediumclone/pages/profile.dart';
import 'homepage.dart';

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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
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
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 4.0),
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                      "https://cdn-images-1.medium.com/max/2600/1*A0KxddStHqQOTIIj2ri1gg.jpeg"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, top: 12.0, right: 12),
                  child: Text(
                    "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Divider(
                    height: 2.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://banner2.kisspng.com/20190131/aob/kisspng-ad-blocking-adguard-computer-software-download-mob-5c537e57554f10.6046552315489757033494.jpg"),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Published in",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text("Published in"),
                      ],
                    ),
                    Divider(
                      height: 2.0,
                    ),
                    OutlineButton(
                      textColor: Colors.blue,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4.0)),
                      child: Text('Follow'),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 1),
                      onPressed: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Divider(
                    height: 2.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://banner2.kisspng.com/20190131/aob/kisspng-ad-blocking-adguard-computer-software-download-mob-5c537e57554f10.6046552315489757033494.jpg"),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Published in",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text("Ali Anıl Koçak")
                      ],
                    ),
                    Divider(
                      height: 2.0,
                    ),
                    OutlineButton(
                      textColor: Colors.blue,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4.0)),
                      child: Text('Follow'),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 1),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Profile(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Divider(
                    height: 2.0,
                  ),
                ),
                itemBlog(context, 1),
                itemBlog(context, 2),
                itemBlog(context, 3),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Divider(
                    height: 2.0,
                  ),
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      "Write a response...",
                      style: TextStyle(color: Colors.black45),
                    ),
                    leading: Icon(FontAwesomeIcons.userCircle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Divider(
                    height: 2.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
