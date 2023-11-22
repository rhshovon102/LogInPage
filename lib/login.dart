import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login3/main.dart';
import 'page1.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: CupertinoColors.systemGrey2,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [


                  SizedBox(height: 20.0),

                  Text('$wrong'),


                  Icon(Icons.lock,size: 300,color: Colors.black87),
                  SizedBox(height: 20.0),

                  Text('Welcome Back Dude!!'),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value){
                        mail = value;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white, filled: true, hintText: 'Email',
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      onChanged: (value){
                        pass = value;
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white, filled: true, hintText: 'Password',
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))
                      ),
                    ),
                  ),
                  Text('Forget Password?'),

                  SizedBox(height: 15.0),
                  GestureDetector(
                    onTap: (){
                      if(email == mail && password == pass){
                        Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => page1())
                            );
                      }
                      else{
                        wrong='Wrong Email or Password, Try Again';
                      }
                    },
                    child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.5),color: Colors.black87,),
                        child: Text('SignIn',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50.0,color: Colors.white70)),
                        ),
                  ),

                  Divider(height: 30.0,thickness: 1.5),
                  Text('Or go with'),


                  SizedBox(height: 20.0),
                  Container(
                    width: 300.0,
                    height: 40.0,
                    child:    SignInButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => page1())
                        );
                      },
                      button: Button.Facebook,
                      borderRadius: 30.0,
                      height: 5.0,
                      width: 90.0,
                      /*text: ,
                      textSize: ,
                      iconSize: ,*/
                    )),
                  SizedBox(height: 5.0),
                  Container(
                      width: 300.0,
                      height: 40.0,
                      child:    SignInButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => page1())
                          );
                        },
                        button: Button.Google,
                        borderRadius: 30.0,
                        height: 5.0,
                        width: 90.0,
                        /*text: ,
                      textSize: ,
                      iconSize: ,*/
                      )),
                  SizedBox(height: 5.0),
                  Container(
                      width: 300.0,
                      height: 40.0,
                      child:    SignInButton(
                        onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => page1())
                              );
                        },
                        button: Button.LinkedIn,
                        borderRadius: 30.0,
                        height: 5.0,
                        width: 90.0,
                        /*text: ,
                      textSize: ,
                      iconSize: ,*/
                      )),

                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
