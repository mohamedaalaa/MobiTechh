import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDetails extends StatelessWidget {
  const DrawerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Mohamed alaa"),
              accountEmail: Text("mhamedalaa462@gmail.com"),
              currentAccountPicture: CircleAvatar(child:Icon(Icons.person)),
              decoration: BoxDecoration(
                  color: Colors.deepPurple
              ),
            )
          ],
        ),
      ),
    );
  }
}
