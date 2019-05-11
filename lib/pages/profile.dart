import 'package:flutter/material.dart';
import 'package:mediumclone/Utils/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
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
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[Text("data"), Text("data")],
                  ),
                  Icon(FontAwesomeIcons.twitter),
                  Icon(FontAwesomeIcons.facebook),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
