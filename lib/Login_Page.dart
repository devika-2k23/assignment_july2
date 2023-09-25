import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'My_Page.dart';
import 'Sign_Up.dart';

void main(){
  runApp(MaterialApp(home: Login_Stateful()));
}

class Login_Stateful  extends StatefulWidget {
  // const ({super.key});
  @override
  State<Login_Stateful> createState() => _LoginStatefulState();
}

class _LoginStatefulState extends State<Login_Stateful> {
  String email="abc@gmail.com";
  String pass = "abc@123";
  final email_controller=TextEditingController();
  final pass_controller=TextEditingController();
  final formkey =GlobalKey<FormState>();
  bool passhid = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Form(
        key: formkey,
        child: Center(
          child: Container(
            padding: EdgeInsets.only(bottom:100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login",
                  style: GoogleFonts.notoSans(
                      fontSize:30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(height:15,),
                Text("Welcome back! Login with your credentials",
                  style: GoogleFonts.notoSans(
                      fontSize:12,
                      color: Colors.black54
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: email_controller,
                    decoration: InputDecoration(
                        hintText:'Email ID',
                        prefixIcon: Icon(Icons.account_box_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    validator:(emailid){
                      if(emailid!.isEmpty||!emailid.contains('@')||!email.contains('.com')){
                        return "Invalid Email id or Field must not be Empty";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: passhid,
                    obscuringCharacter: "*",
                    controller: pass_controller,
                    decoration:InputDecoration(
                        hintText: "Password",
                        suffixIcon:IconButton(onPressed: () {
                          setState(() {
                            if(passhid==true){
                              passhid=false;
                            }else{
                              passhid=true;
                            }
                          });
                        }, icon:Icon(passhid==true
                            ?Icons.visibility_off_outlined
                            :Icons.visibility
                        )),
                        prefixIcon: Icon(Icons.visibility_off_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ) ,
                    validator: (pass){
                      if(pass!.isEmpty||pass.length<6){
                        return 'Incorrect Password or Field must not be Empty';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                Container(
                  width: 800,
                  height: 45,
                  child: ElevatedButton(onPressed: () {
                    if (formkey.currentState!.validate()) {
                      if (email == email_controller.text &&
                          pass == pass_controller.text) {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => My_Page()));
                      }
                    }
                  },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sign_Up()));
                },
                    child:Text("Do you have an account? SignUp",
                      style:TextStyle(
                          color: Colors.black54,
                          fontSize:12
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}