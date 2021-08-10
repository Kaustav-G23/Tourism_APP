import 'dart:ui';
import 'package:glass_kit/glass_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:tourism_app/screens/homescreen.dart';
import 'package:tourism_app/screens/bottom_navigation.dart';


class RegistrationScreen extends StatelessWidget {

  final String id = 'registration_screen';
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  String name;
  String number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1504681869696-d977211a5f4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=562&q=80",
            height: 2000,
            width: 1000,
            fit: BoxFit.fill,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.0,
              sigmaY: 2.0,
            ),
            child: Container(color: Colors.transparent),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: GlassContainer(
                      height: 350,
                      width: 370,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.40),
                          Colors.blue.withOpacity(0.40)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderGradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.60),
                          Colors.white.withOpacity(0.10),
                          Colors.lightBlueAccent.withOpacity(0.05),
                          Colors.lightBlueAccent.withOpacity(0.6)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 0.39, 0.40, 1.0],
                      ),
                      blur: 15.0,
                      borderWidth: 1.5,
                      elevation: 3.0,
                      isFrostedGlass: true,
                      shadowColor: Colors.black.withOpacity(0.20),
                      alignment: Alignment.center,
                      frostedOpacity: 0.2,
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Spacer(),
                          Text(
                            "REGISTRATION",
                            style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Create Account",style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300),),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            onChanged: (value) {
                              email = value;
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            onChanged: (value) {
                              password = value;
                            },
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 150.0,
                            height: 50.0,
                            child: FlatButton(

                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30.0)),
                              color: Colors.blue,
                              onPressed: () async{
                                try {
                                  final newUser = await _auth
                                      .createUserWithEmailAndPassword(
                                      email: email, password: password);
                                  if(newUser != null){
                                    Navigator.pushNamed(context, MyBottomNavigation().id);
                                  }
                                }
                                catch (e){
                                  print(e);
                                }
                              },
                              child: Text("Register",
                                style: TextStyle(color: Colors.white, fontSize: 20.0),),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}