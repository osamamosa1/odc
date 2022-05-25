import 'package:flutter/material.dart';
import 'package:odc/forgetPassword.dart';
import 'package:odc/register.dart';

import 'package:provider/provider.dart';

import 'providerData.dart';


class Login2 extends StatefulWidget {
  const Login2({Key key}) : super(key: key);

  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller;
  TextEditingController _controller2;

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
        builder: (context, data, child) => SafeArea(
          child: Scaffold(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Image.asset('images/loginLowerDrow.png',height: 60,)),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset('images/Logo.png',height: 50,width: 100,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                      child: Row(children: [
                        Text('Welcome,',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text('Back!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffFF6600)))
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Log in',style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _controller2,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your E-mail',
                                  labelText: 'E-mail',
                                  filled: true,
                                  focusColor: Colors.black,
                                  fillColor: Colors.black12,
                                  hintStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 3),
                                      borderRadius: BorderRadius.circular(20))),
                              keyboardType: TextInputType.text,
                              onChanged: (input) {
                                data.loginEmail = input;
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'feild is required';
                                } else if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return 'not valid email';
                                } else
                                  return null;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _controller,
                              obscureText: true,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your Password',
                                  labelText: 'Password',
                                  filled: true,
                                  focusColor: Colors.black,
                                  fillColor: Colors.black12,
                                  hintStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 3),
                                      borderRadius: BorderRadius.circular(20))),
                              keyboardType: TextInputType.text,
                              onChanged: (input) {
                                data.loginPassword = input;
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'feild is required';
                                } else if (value.length < 8) {
                                  return 'Password should be more than 8 characters';
                                } else
                                  return null;
                              },
                            ),
                            SizedBox(height: 12,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                                    },
                                    child: Text('forget password ?',style: TextStyle(color: Color(0xffFF6600)),))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      child: Center(
                        child: TextButton(
                          style:TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 15,horizontal: MediaQuery.of(context).size.width*.35),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),

                              backgroundColor: Color(0xffFF6600)
                          ) ,
                          child: Text('log in',style: TextStyle(color: Colors.white,fontSize: 15),),
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(
                          "Don't Have Account",

                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color(0xffFF6600), fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                        flex:2,child: SizedBox()),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset('images/loginUpperDrow.png',height: 60,)),
                  ],
                ),
              ),
        ));
  }
}


