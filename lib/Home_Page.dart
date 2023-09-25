import 'dart:async';
import 'package:assignment_july/Login_Page.dart';
import 'package:assignment_july/Sign_Up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MaterialApp(
    home: (Stateful_Splash()),
  ));
}
class Stateful_Splash extends StatefulWidget {
  const Stateful_Splash({super.key});

  @override
  State<Stateful_Splash> createState() => _Stateful_SplashState();
}

class _Stateful_SplashState extends State<Stateful_Splash>{
  @override
  void initState() {
    super.initState();
    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login_Stateful()));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(90),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Hello There!",
                  style: GoogleFonts.averageSans(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                  "Automatic identity verification which enable you to verify your identity",
                  style: GoogleFonts.duruSans(
                      fontSize: 10,
                      color: Colors.black54)
              ),
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Expanded(
                  child: Image(image: AssetImage("assets/images/home.png"),
                    width:200,
                    height:200,
                  ),
                ),
              ),
              SizedBox(height:40),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                    width: 250,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login_Stateful()));
                      }, child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.green,
                      ),
                    )),
              ), //SizedBox(height: 50,),
              Container(
                  width: 250,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Sign_Up()));
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.green,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}