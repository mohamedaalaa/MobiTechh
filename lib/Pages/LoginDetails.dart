import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastering1/Pages/Home.dart';
import 'package:mastering1/Pages/forgot_password_page.dart';
import 'package:mastering1/Pages/log_in.dart';



class LoginDetails extends StatefulWidget {
  //const LoginDetails({Key? key}) : super(key: key);

  @override
  _LoginDetailsState createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String email1,password1;

  signIn() async{
    var formData=_formKey.currentState;
    if(formData!.validate()){
      formData.save();
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: email1, password: password1);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      }catch(signInError){
        print(signInError);
      }
    }
    else{
      print("not valid");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF1C1C1C),
              height: 2,
            ),
          ),
          Text(
            "MOBITECH",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1C1C1C),
              letterSpacing: 2,
              height: 1,
            ),
          ),
          Text(
            "Please login to continue",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF1C1C1C),
              height: 1,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            controller: email,
            decoration: InputDecoration(
              hintText: ("Email / Username"),
              hintStyle: TextStyle(
                fontSize: 16,
                color: Color(0xFFD9BC43),
                fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(width: 0, style: BorderStyle.solid),
              ),
              filled: true,
              fillColor: Color(0xFFECCB45),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            ),
            validator: (value) {
              if(value!.trim().isEmpty){
                return "User Name can't be empty";
              }
              if(value.trim().length<4){
                return "User Name can't be less than 4 chars";
              }
              if(value.trim().length>30){
                return "User Name can't be more than 30 chars";
              }
            },
            onSaved: (value){
              email1=value!;
            },
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              hintText: ("Password"),
              hintStyle: TextStyle(
                fontSize: 16,
                color: Color(0xFFD9BC43),
                fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(width: 0, style: BorderStyle.solid),
              ),
              filled: true,
              fillColor: Color(0xFFECCB45),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            ),
            validator: (value) {
              if(value!.trim().isEmpty){
                return "Password Can't be Empty";
              }
              if(value.trim().length<4){
                return "Password can't be less than 4 chars";
              }
              if(value.trim().length>30){
                return "Password can't be more than 30 chars";
              }
            },
            onSaved: (value){
              password1=value!;
            },
          ),
          SizedBox(
            height: 24,
          ),
          InkWell(child:  Container(
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF1C1C1C),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF1C1C1C).withOpacity(.2),
                      blurRadius: 4,
                      spreadRadius: 3,
                      offset: Offset(0, 3))
                ]),
            child: Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF3D657),
                ),
              ),
            ),
          ),
              onTap:signIn
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            child: Text(
              "FORGOT PASSWORD",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C1C1C),
                height: 1,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForgotPassword()));
            },
          )
        ],
      ),
    );
  }
}



