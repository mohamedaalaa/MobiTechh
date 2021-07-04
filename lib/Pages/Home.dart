import 'package:flutter/material.dart';
import 'package:mastering1/Pages/sizeBox.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../style.dart';
import 'MyDrawer.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var country;
  getPref()async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    country=sharedPreferences.getString("country");
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
        endDrawer: MyDrawer(),
        appBar:  AppBar(
          title: Text("MobiTech"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          elevation: 5,
          leading: IconButton(icon:Icon(Icons.search),onPressed: (){
            showSearch(context: context,delegate: DataSearch(mobiList1));
          }
          ),
        ),


        body: SizeBoxStyle(),
      );


  }
}


class DataSearch extends SearchDelegate<String>{

  final List<String> names;

  DataSearch(this.names);
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return[
      IconButton(onPressed:(){
        query='';
      }, icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context, "");
    },icon: (Icon(Icons.arrow_back)),);
  }

  @override
  Widget buildResults(BuildContext context) {
    query.isEmpty?names: names.where((name) => name.toLowerCase().contains(query.toLowerCase()));
    return ListView.builder(itemCount: names.length,itemBuilder: (context,int index){
      return ListTile(
        leading: Icon(Icons.mobile_screen_share),
        title: Text(names[index]),
        onTap: (){
          query=names[index];
          showResults(context);
        },
      );
    });
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    query.isEmpty?names: names.where((name) => name.toLowerCase().contains(query.toLowerCase()));
    return ListView.builder(itemCount: names.length,itemBuilder: (context,int index){
      return ListTile(
        leading: Icon(Icons.mobile_screen_share),
        title: Text(names[index]),
        onTap: (){
          query=names[index];
          showResults(context);
        },
      );
    });
  }


}

