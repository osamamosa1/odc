import 'package:flutter/material.dart';
import 'package:odc/Question.dart';
import 'package:odc/course.dart';
import 'package:odc/forgetPassword.dart';
import 'package:odc/introductionScreen.dart';
import 'package:odc/login.dart';
import 'package:odc/register.dart';
import 'package:provider/provider.dart';
import 'changePassword.dart';
import 'exam.dart';
import 'startExam.dart';
import 'forotenEmail.dart';
import 'home.dart';
import 'providerData.dart';
import 'splashScreen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider<Data>(
      create: (BuildContext context)=>Data(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}
