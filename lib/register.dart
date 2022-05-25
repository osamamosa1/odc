import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc/login.dart';
import 'package:odc/privacy.dart';

import 'package:provider/provider.dart';

import 'home.dart';
import 'providerData.dart';


class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
        builder: (context, data, child)
    =>
    SafeArea(
        child: Scaffold(
        body: Container(
        height: MediaQuery.of(context).size.height,
    child: ListView(
    children: [
    Align(
    alignment: Alignment.topRight,
    child: Image.asset('images/loginLowerDrow.png',height: 60,)),
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
    child: Row(children: [
    Text('Hello,',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    Text('Friend!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffFF6600)))
    ],),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold)),
    ),
    Container(
    padding: EdgeInsets.all(20),
    child: Form(
    key: _formKey,
    child: Column(
    children: [
    Container(
    child: TextFormField(
    decoration: InputDecoration(
    prefixIcon: Icon(
    Icons.person,
    ),
    border: OutlineInputBorder(),
    hintText: 'fullname',
    labelText: 'name',
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
    data.registerName = input;
    },
    validator: (value) {
    if (value.isEmpty) {
    return 'feild is required';
    } else if (value.length<3) {
    return 'not valid name';
    } else
    return null;
    },
    ),
    ),
    SizedBox(height: 10,),
    TextFormField(
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
    data.registerEmail = input;
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
    SizedBox(height: 10,),
    TextFormField(
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
    data.registerPassword = input;
    },
    validator: (value) {
    if (value.isEmpty) {
    return 'feild is required';
    } else if (RegExp(
    r"/^\S*(?=\S{6,})(?=\S*\d)(?=\S*[A-Z])(?=\S*[a-z])(?=\S*[!@#$%^&*? ])\S*$/")
        .hasMatch(value)) {
    return 'Password should be stronger';
    } else
    return null;
    },
    ),
    SizedBox(height: 10,),
    TextFormField(
    obscureText: true,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.phone),
    border: OutlineInputBorder(),
    hintText: 'phone number',
    labelText: 'phone',
    filled: true,
    focusColor: Colors.black,
    fillColor: Colors.black12,
    hintStyle: TextStyle(color: Colors.white),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white, width: 3),
    borderRadius: BorderRadius.circular(20))),
    keyboardType: TextInputType.phone,
    onChanged: (input) {
    data.registerPassword = input;
    },
    validator: (value) {
    if (value.isEmpty) {
    return 'feild is required';
    }else if(value.length!=11){
    return 'phone must be 11 number';
    } else
    return null;
    },
    ),
    SizedBox(height: 10,),
    TextFormField(
    decoration: InputDecoration(
    prefixIcon: Icon(
    Icons.location_on,
    ),
    border: OutlineInputBorder(),
    hintText: 'Address',
    labelText: 'Address',
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
    data.registerAddress = input;
    },
    validator: (value) {
    if (value.isEmpty) {
    return 'feild is required';
    } else
    return null;
    },
    ),
    ],
    ),
    ),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Checkbox(value: data.privacyAcceptance, onChanged: (bool val){
    data.notifyListeners();
    data.privacyAcceptance=val;

    }),
    Text(
    "Do you agree to our ",

    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>
    Privacy()));
    },
    child: Text(
    'privacy policy',
    style: TextStyle(
    color: Color(0xffFF6600), fontWeight: FontWeight.bold),
    ),
    )
    ],
    ),

    Container(
    child: Center(
    child: TextButton(
    onPressed: ()async{
    var connectivityResult =
    await (Connectivity().checkConnectivity());
    if (_formKey.currentState.validate()) {
    if (connectivityResult != ConnectivityResult.mobile &&
    connectivityResult != ConnectivityResult.wifi) {
    Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('no internet connection'),
    backgroundColor: Colors.red,
    ));
    }
    else{
      try {
        await data.register();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
      }catch (e) {
        showDialog(context: context, builder: (context)=>AlertDialog(
          content:InkWell(
            onTap:() {Navigator.pop(context);},
            child: Container(
              child: Text('ok'),
            ),
          ) ,
          title: Text('failed to send your application\n'
              'please try again later'),
        ));
      }
    }
    }

    },
    style:TextButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 15,horizontal: MediaQuery.of(context).size.width*.35),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
    ),

    backgroundColor: Color(0xffFF6600)
    ) ,
    child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 15),),
    ),
    ),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    "Already have Account",

    ),
    SizedBox(
    width: 10,
    ),
    InkWell(
    onTap: ()async{

    },
    child: Text(
    'Log in',
    style: TextStyle(
    color: Color(0xffFF6600), fontWeight: FontWeight.bold),
    ),
    )
    ],
    ),
    SizedBox(height: 65,),
    Align(
    alignment: Alignment.bottomLeft,
    child: Image.asset('images/loginUpperDrow.png',height: 60,)),
    ],
    ),
    ),
    ),
    ));
    }
  }


