import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providerData.dart';

class Exam extends StatelessWidget {
  const Exam({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context,data,child)=>
        Scaffold(
          body:(data.Quistions[data.questionsCounter]==null)? data.Quistions[data.questionsCounter]:Center(child: CircularProgressIndicator(),),
        )
    );
  }
}
