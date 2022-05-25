import 'package:flutter/material.dart';
import 'package:odc/providerData.dart';
import 'package:provider/provider.dart';
class CourseHome extends StatelessWidget {
  const CourseHome({this.image,this.title,this.id}) ;
  final image,title,id;
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context,data,child)=>SafeArea(
    child: Scaffold(
    body: Container(
        padding: EdgeInsets.all(20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width: double.infinity,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/course.png'),fit: BoxFit.fill
    )
    ),
    height: MediaQuery.of(context).size.height*0.3,
    child: InkWell(
    child: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
    Navigator.pop(context);
    },)
    ),
    ),
    Center(child: Text('CourseTitle',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
    Center(child: Text('auther name')),
    Container(
    child: Center(
    child: TextButton(
    onPressed: (){
    showDialog(context: context, builder: (context)=>AlertDialog(
    shape:Border(),
    content:Container(
    height: 180,
    child: Column(
    children: [
    Image.asset('images/codeSent.png'),
    SizedBox(height: 20,),
    Center(
    child: Text('the code has been sent',style: TextStyle(fontWeight: FontWeight.bold),),
    ),
    SizedBox(height: 20,),
    Container(
    child: Center(
    child: TextButton(
    onPressed: (){
    Navigator.pop(context);
    showDialog(context: context, builder: (context)=>AlertDialog(
    shape:Border(),
    content:Container(
    height: 280,
    child: Column(
    children: [
    Image.asset('images/codeEnter.png'),
    SizedBox(height: 10,),
    Center(
    child: Text('enter the code',style: TextStyle(fontWeight: FontWeight.bold),),
    ),
    SizedBox(height: 15,),
    TextFormField(
    obscureText: true,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    filled: true,
    focusColor: Colors.black,
    fillColor: Colors.black12,
    hintStyle: TextStyle(color: Colors.white),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white, width: 3),
    borderRadius: BorderRadius.circular(20))),
    onChanged: (input) {
    data.courseCode=input;
    },
    validator: (value) {
    if (value.isEmpty) {
    return 'feild is required';

    } else
    return null;
    },
    ),
    SizedBox(height: 10,),
    Container(
    child: Center(
    child: TextButton(
    onPressed: (){

    },
    style:TextButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 15,horizontal: MediaQuery.of(context).size.width*.25),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
    ),

    backgroundColor: Color(0xffFF6600)
    ) ,
    child: Text('next',style: TextStyle(color: Colors.white,fontSize: 15),),
    ),
    ),
    ),
    ],

    ),
    ) ,
    )) ;
    },
    style:TextButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 15,horizontal: MediaQuery.of(context).size.width*.2),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
    ),

    backgroundColor: Color(0xffFF6600)
    ) ,
    child: Text('next',style: TextStyle(color: Colors.white,fontSize: 15),),
    ),
    ),
    ),
    ],

    ),
    ) ,
    ));
    },
    style:TextButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 15,horizontal: MediaQuery.of(context).size.width*.30),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
    ),

    backgroundColor: Color(0xffFF6600)
    ) ,
    child: Text('start course',style: TextStyle(color: Colors.white,fontSize: 15),),
    ),
    ),
    ),
    Text('about this course')
    ],
    ),),
    ),
    ));
  }
}
