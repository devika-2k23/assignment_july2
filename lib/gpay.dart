import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: SplashPage(),
  ));
}
class SplashPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        //decoration:BoxDecoration(
       //   color: Colors.black87
     //   ),
        child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image(image: AssetImage("assets/icons/icon4.png"),
                  //width:150,height: 150,

                  Image(
                      image: NetworkImage("https://static1.xdaimages.com/wordpress/wp-content/uploads/2020/12/Google-Pay-dark-theme-featured.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5"),
                 width: 450,height: 450,
                  ),


                  Text("Google",
                   textAlign: TextAlign.end,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 40,
                        color: Colors.white70,
                        fontWeight: FontWeight.normal
                    ),

                  )
                ],
              ),

              ),
            ),

            );




  }

}