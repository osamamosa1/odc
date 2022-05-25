import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartExam extends StatelessWidget {
  const StartExam({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container(
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2),
                      child:   InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back)),
                    ),
                    Text('course Exam',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(
                    right: 20, left: 5, top: 5, bottom: 5),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffFF6600),
                              width: 2),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(child: Text('1'),),
                    ),
                    Expanded(
                        child: Container(height: 3, color: Colors.black12,)),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12, width: 2),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(child: Text('2'),),
                    ),
                    Expanded(
                        child: Container(height: 3, color: Colors.black12,)),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12, width: 2),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(child: Text('3'),),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('exam', style: TextStyle(fontWeight: FontWeight.bold,),),
                  Text(
                    'HR interview', style: TextStyle(color: Colors.black45,),),
                  Text('complete', style: TextStyle(color: Colors.black45,),)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: MediaQuery
                    .of(context)
                    .size
                    .width * 0.18),
                child: Text('course title',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.3,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.8,
                child: Image.asset('images/homeExam.png'),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: MediaQuery
                    .of(context)
                    .size
                    .width * 0.18),
                child: Text('Start your Exam',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: MediaQuery
                    .of(context)
                    .size
                    .width * 0.04),
                child: Text('make sure to achieve more than 60%',),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Exam time',style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('1 Hr',style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                child: Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 15, horizontal: MediaQuery
                            .of(context)
                            .size
                            .width * .35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                        backgroundColor: Color(0xffFF6600)
                    ),
                    child: Text('start',
                      style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
