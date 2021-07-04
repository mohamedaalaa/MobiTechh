
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Mohamed alaa"),
              accountEmail: Text("mhamedalaa462@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              decoration: BoxDecoration(color: Colors.deepPurple),
            ),
            ListTile(
              title: Text("Main Page", style:TextStyle(fontSize: 18, fontStyle: FontStyle.normal, color: Colors.blue)),
              leading: Icon(Icons.home, color: Colors.blue, size: 30),
              onTap: () {
                Navigator.of(context).pushNamed("home_page");
              },
            ),
            ListTile(
              title: Text("Categories", style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, color: Colors.blue)),
              leading: Icon(Icons.category, color: Colors.blue, size: 30),
              onTap: () {
                Navigator.of(context).pushNamed("categories");
              },
            ),
            ListTile(
              title: Text("About Phone", style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, color: Colors.blue)),
              leading:
              Icon(Icons.account_balance_outlined, color: Colors.blue, size: 30),
              onTap: () {
                Navigator.of(context).pushNamed("about_phone");
              },
            ),
            ListTile(
              title: Text("Settings", style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, color: Colors.blue)),
              leading: Icon(Icons.settings, color: Colors.blue, size: 30),
              onTap: () {
                Navigator.of(context).pushNamed("settigs");
              },
            ),
            ListTile(
              title: Text("LogIn", style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, color: Colors.blue)),
              leading: Icon(Icons.login, color: Colors.blue, size: 30),
              onTap: () {
                Navigator.of(context).pushNamed("HomeLoginPage");
              },
            )
          ],
        ),
    );
  }
}
