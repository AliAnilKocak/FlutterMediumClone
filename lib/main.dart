import 'package:flutter/material.dart';
import 'package:mediumclone/drawer.dart';
import 'package:mediumclone/pages/homepage.dart';
void main() => runApp(MediumClone());

class MediumClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.black,brightness:Brightness.light),
      title: 'Medium Clone',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications_none,color: Colors.grey,), onPressed: () {},),
            IconButton(icon: Icon(Icons.search,color: Colors.grey,), onPressed: () {},),
          ],
        ),
        drawer: DrawerList(),
        body: HomePage(),
      ),
    );
  }
}
