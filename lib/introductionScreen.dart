import 'package:flutter/material.dart';
import 'package:hw_introduction_screen/hw_introduction_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:odc/login.dart';
import 'package:odc/register.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        pages: [
          PageViewModel(
            bodyWidget: Column(
              children: [
                Text('Lorem ipsum dolor sit amet, consectetur \n adipiscing elit,'
                    ' sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua. '),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Color(0xffFF6600),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.black12,
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.black12,
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                            color: Color(0xffFF6600),
                            borderRadius: BorderRadius.circular(7)
                        ),
                        padding: EdgeInsets.symmetric( vertical: 10),
                        child: Text('join now',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login2()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                            border: Border.all(color:Color(0xffFF6600) ),
                            borderRadius: BorderRadius.circular(7)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10),

                        child: Text('log in',style: TextStyle(fontSize: 15,color: Color(0xffFF6600)),textAlign: TextAlign.center,),
                      ),
                    )
                  ],
                ),
              ],
            ),
              title: 'Learn alot of courses '
                  '\n in Orange Education',
              image: Image.asset('images/intro1.png')),
          PageViewModel(
              bodyWidget: Column(
                children: [
                  Text('Lorem ipsum dolor sit amet, consectetur\n adipiscing elit,'
                      ' sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua. '),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.black12,
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xffFF6600),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.black12,
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                              color: Color(0xffFF6600),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          padding: EdgeInsets.symmetric( vertical: 10),
                          child: Text('join now',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center),
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login2()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                              border: Border.all(color:Color(0xffFF6600) ),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),

                          child: Text('log in',style: TextStyle(fontSize: 15,color: Color(0xffFF6600)),textAlign: TextAlign.center,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              title: 'Learn alot of courses'
                  ' \n in Orange Education',
              image: Image.asset('images/intro2.png')),
          PageViewModel(
              bodyWidget: Column(
                children: [
                  Text('Lorem ipsum dolor sit amet, consectetur\n adipiscing elit,'
                      ' sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua. '),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.black12,
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.black12,
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xffFF6600),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                              color: Color(0xffFF6600),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          padding: EdgeInsets.symmetric( vertical: 10),
                          child: Text('join now',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center),
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login2()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                              border: Border.all(color:Color(0xffFF6600) ),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),

                          child: Text('log in',style: TextStyle(fontSize: 15,color: Color(0xffFF6600)),textAlign: TextAlign.center,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              title: 'Learn alot of courses'
                  '\n in Orange Education',
              image: Image.asset('images/intro3.png')),

        ],
        animationDuration: 1,
      showDoneButton: false,
      showNextButton: false,
      showBackButton: false,

      dotsDecorator: DotsDecorator(
        activeColor: Colors.transparent,
        color: Colors.transparent
      ),
        );


  }
}
