import 'package:flutter/material.dart';

class ForgotenEmail extends StatelessWidget {
  const ForgotenEmail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: SizedBox()),
          Center(
            child: Container(
              child: Image.asset('images/forgotenEmail.png'),
            ),
          ),
          Expanded(
              flex: 1,
              child: SizedBox()),
          Text('Please enter your email address to \n recieve vervication code'),
          Expanded(
              flex:1,child: SizedBox()),
          Container(
            height: 55,
            padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.1),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'email',
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 5
                      )
                  ),
                  fillColor: Colors.black12
              ),
            ),),
          SizedBox(height: 30,),
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
                child: Text('send',style: TextStyle(color: Colors.white,fontSize: 15),),
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: SizedBox())
        ],
      ),
    );
  }
}
