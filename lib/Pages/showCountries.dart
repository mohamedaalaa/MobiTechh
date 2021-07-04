
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({Key? key}) : super(key: key);

  @override
  _ChooseCountryState createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  savePref(String country)async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    sharedPreferences.setString("country", country);
    print(sharedPreferences.getString("country"));
    Navigator.of(context).pushNamed("home_page");
  }
  getPref()async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    var country=sharedPreferences.getString("country");
    if(country != null){
      Navigator.of(context).pushNamed("home_page");
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    getPref();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChooseCountry"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
             ListTile(
               title: Text("Egypt"),
               onTap: (){
                 savePref("Egypt");
               },
               trailing: Image.asset("images/eg1.png",height: 40,width: 40),
        ),
            ListTile(
              title: Text("Kuwait"),
              onTap: (){
                savePref("Kuwait");
              },
              trailing: Image.asset("images/Ku.png",height: 40,width: 40),
            ),
            ListTile(
              title: Text("Syria"),
              onTap: (){
                savePref("Syria");
              },
              trailing: Image.asset("images/Sy.png",height: 40,width: 40),
            )
          ],
        ),
      ),

    );
  }
}
