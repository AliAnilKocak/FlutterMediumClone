import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Menu"),
              ),
              ListTile(
                title: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text("Yönet"),
                  onPressed: () {},
                ),
                onTap: () {},
              )
            ],
          ),
        );
  }

}