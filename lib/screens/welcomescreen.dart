import 'dart:ui';
import 'package:glass_kit/glass_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'registrationscreen.dart';

class WelcomeScreen extends StatelessWidget {

  final String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://images.pexels.com/photos/699466/pexels-photo-699466.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            height: 2000,
            width: 1000,
            fit: BoxFit.fill,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3.0,
              sigmaY: 3.0,
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
                            "TOURISM",
                            style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Lets Roam",style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300),),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 200.0,
                            height: 60.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30.0)),
                              color: Colors.blue,
                              onPressed: (){
                                Navigator.pushNamed(context, LoginScreen().id);
                              },
                              child: Text("Login",
                                style: TextStyle(color: Colors.white, fontSize: 20.0),),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 200.0,
                            height: 60.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30.0)),
                              color: Colors.blue,
                              onPressed: (){
                                Navigator.pushNamed(context, RegistrationScreen().id);
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