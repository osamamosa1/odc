import 'dart:async';

import 'package:flutter/material.dart';
import 'package:odc/providerData.dart';
import 'package:provider/provider.dart';

class Question extends StatelessWidget {
  Question({this.Answers,this.question});
  final Answers,question;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<Data>(
          builder: (context, data, child) => Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'course Exam',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Expanded(flex: 1, child: SizedBox()),
                Row(
                  children: [
                    Text(
                      'Question ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('${data.questionsCounter + 1}',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFF6600)),),
                    Text(
                      '/ ${data.questionsLength}',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black12),
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFF6600),width: 2),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(child: Text('1'))
                    )
                  ],
                ),
                Expanded(flex: 1, child: SizedBox()),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('$question'),
                ),
                Expanded(flex: 1, child: SizedBox()),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height*0.5,
                  child: ListView.builder(itemBuilder: (context, index) => Column(
                    children: [
                      Container(child: Text('${Answers[index]}'),),
                      Expanded(flex: 1, child: SizedBox()),
                    ],
                  )),
                ),

                Expanded(flex: 2, child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        data.notifyListeners();
                        if (data.questionsCounter != 0) {
                          data.questionsCounter--;
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            color: Color(0xffFF6600),
                            borderRadius: BorderRadius.circular(7)),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text('Back',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        data.notifyListeners();
                        if(data.questionsCounter!=data.questionsLength){
                          data.questionsCounter++;
                        }else{}
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffFF6600)),
                            borderRadius: BorderRadius.circular(7)),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'next',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffFF6600)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(flex: 5, child: SizedBox())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
