// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastering1/Pages/Home.dart';
import 'package:mastering1/Pages/categories.dart';
import 'package:mastering1/Pages/forgot_password_page.dart';
import 'package:mastering1/Pages/log_in.dart';
import 'package:mastering1/Pages/mobile_details.dart';
import 'package:mastering1/Pages/register.dart';
import 'package:mastering1/Pages/samsung.dart';
import 'package:mastering1/Pages/showCountries.dart';
import 'package:mastering1/Pages/test.dart';
import 'Pages/about_phone.dart';
import 'Pages/settings.dart';



void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChooseCountry(),
        routes: {
          'categories': (context) {
            return Categories();
          },
          'home_page': (context) {
            return HomePage();
          },
          'about_phone': (context) {
            return AboutPhone();
          },
          'settigs': (context) {
            return Settings();
          },
          'samsung': (context) {
            return Samsung();
          },
          'mobileDetails' : (context){
            return MobileDetails();
          },
          'chooseCountry' : (context){
            return ChooseCountry();
          },
          'HomeLoginPage' : (context){
            return HomeLoginPage();;
          },
          'Signup' : (context){
            return Signup();
          },
          'ForgotPassword' : (context){
            return ForgotPassword();
          }
        }
        );
  }
}
