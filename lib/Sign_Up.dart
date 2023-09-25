
import 'package:assignment_july/My_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Login_Page.dart';
import 'Home_Page.dart';

void main(){
  runApp(MaterialApp(home:Sign_Up()));
}

class Sign_Up extends StatefulWidget {
  // const SignUp({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  final formkey=GlobalKey<FormState>();
  String? pass;
  bool hidpass=true;
  bool hiddpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Form(
          key: formkey,
          child: Container(
            padding: EdgeInsets.only(top: 150),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("SignUp",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15),
                    child: Text("Create an Account, Its free",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText:"Email ID",
                          prefixIcon: Icon(Icons.account_box_rounded),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      validator:(emailid){
                        if(emailid!.isEmpty||!emailid.contains('@')||!emailid.contains('.com')){
                          return "Invalid Email id or Field must not be Empty";
                        }else{
                          return null;
                        }
                      },  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                        obscuringCharacter: "*",
                        obscureText:hidpass,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.visibility_off),
                            suffixIcon:IconButton(
                                onPressed: (){
                                  setState(() {
                                    if(hidpass==true){
                                      hidpass=false;
                                    }else{
                                      hidpass=true;
                                    }
                                  });
                                },
                                icon:Icon(hidpass==true
                                    ? Icons.visibility_off
                                    : Icons.visibility
                                )
                            ) ,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        validator: (pswd) {
                          pass=pswd;
                          if (pswd!.isEmpty || pswd.length < 6) {
                            return "Field must contain atleast 6 characters or Field must not be Empty";
                          } else {
                            return null;
                          }
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      obscureText: hiddpass,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.visibility_off),
                          suffixIcon:IconButton(
                            onPressed: (){
                              setState(() {
                                if(hiddpass==true){
                                  hiddpass=false;
                                }else{
                                  hiddpass=true;
                                }
                              });
                            },
                            icon: Icon(hiddpass==true
                                ? Icons.visibility_off
                                : Icons.visibility
                            ),
                          ) ,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      validator: (String? cpass){
                        // cpass==pass;
                        if(cpass!.isEmpty||cpass!=pass){
                          return "Incorrect Password or Field must not be Empty";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 500,
                    child: ElevatedButton(onPressed: (){
                      final valid = formkey.currentState!.validate();
                      if (formkey.currentState!.validate()) {
                        if (valid) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>My_Page()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Inavlid datas')));
                        }
                      }
                    }
                      , child: Text('Sign Up'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_Stateful()));
                    }, child:Text('Do you have an Account? Login',
                      style: TextStyle(
                          fontSize:13,
                          color: Colors.black54
                      ),
                    )),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}