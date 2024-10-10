import 'package:flutter/material.dart';

var MyAppBar = AppBar(
  backgroundColor: Colors.grey[300],
);

var MyDrawer = const Drawer(
  child: Column(
    children: [
      DrawerHeader(
        child: Icon(
          Icons.square,
          size: 100,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: ListTile(
          leading: Icon(Icons.square),
          title: Text("XXXXXX"),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: ListTile(
          leading: Icon(Icons.square),
          title: Text("XXXXXX"),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: ListTile(
          leading: Icon(Icons.square),
          title: Text("XXXXXX"),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: ListTile(
          leading: Icon(Icons.square),
          title: Text("XXXXXX"),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: ListTile(
          leading: Icon(Icons.square),
          title: Text("XXXXXX"),
        ),
      )
    ],
  ),
);

var MyBackground = Colors.grey[200];
