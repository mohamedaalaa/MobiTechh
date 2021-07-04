import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'log_in.dart';




class SigUpDetails extends StatefulWidget {
  const SigUpDetails({Key? key}) : super(key: key);

  @override
  _SigUpDetailsState createState() => _SigUpDetailsState();
}

class _SigUpDetailsState extends State<SigUpDetails> {
  TextEditingController email = new TextEditingController();
  TextEditingController userName = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController reEnterPassword = new TextEditingController();
  GlobalKey<FormState> _formKeySignUp = new GlobalKey<FormState>();
  final _auth=FirebaseAuth.instance;
  late String email1;
  late String password1;
  bool showProgress = false;

  signUp() async {
    var formData = _formKeySignUp.currentState;
    if (formData!.validate()) {
      try {
        formData.save();
        await _auth.createUserWithEmailAndPassword(email: email1, password: password1);
        //aut.sendEmailVerification();
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomeLoginPage();
        }));
      } catch (signUpError) {
        if(signUpError is PlatformException){
          if(signUpError.code == 'ERROR_EMAIL_ALREADY_IN_USE'){
            return "$email has already been registered";
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKeySignUp,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Sign up with",
              style: TextStyle(
                fontSize: 16,
                color: Colors.yellow,
                height: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "MOBITECH",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                letterSpacing: 2,
                height: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              decoration: InputDecoration(
                  hintText: ("email"),
                  hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 0, style: BorderStyle.solid)),
                  filled: true,
                  fillColor: Colors.grey,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 0)),
              validator: (value) {
                if (value!.trim().length < 4) {
                  return "User Name can't be less than 4 chars";
                }
                if (value.trim().length > 30) {
                  return "User Name can't be more than 30 chars";
                }
              },
               onSaved: (value){
                email1=value!;
               },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: userName,
              decoration: InputDecoration(
                  hintText: ("username"),
                  hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 0, style: BorderStyle.solid)),
                  filled: true,
                  fillColor: Colors.grey,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 0)),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'Please enter some text';
                }
                if (value.trim().length < 4) {
                  return "User Name can't be less than 4 chars";
                }
                if (value.trim().length > 30) {
                  return "User Name can't be more than 30 chars";
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                  hintText: ("Password"),
                  hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 0, style: BorderStyle.solid)),
                  filled: true,
                  fillColor: Colors.grey,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 0)),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'Please enter some text';
                }
                if (value.trim().length < 4) {
                  return "Password can't be less than 4 chars";
                }
                if (value.trim().length > 30) {
                  return "Password can't be more than 30 chars";
                }
              },
              onSaved: (value){
                password1=value!;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(

              controller: reEnterPassword,
              decoration: InputDecoration(
                  hintText: ("ReEnter Password"),
                  hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 0, style: BorderStyle.solid)),
                  filled: true,
                  fillColor: Colors.grey,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 0)),
              validator: (value) {
                if (value!= password.text){
                  return "password doesn't match";
                }

              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.yellow.withOpacity(.2),
                          blurRadius: 4,
                          spreadRadius: 3,
                          offset: Offset(0, 3))
                    ]),
                child: Center(
                  child: InkWell(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onTap: signUp
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}


