import 'package:flutter/material.dart';
import 'package:odc/categoryModel.dart';
import 'package:provider/provider.dart';

import 'categories.dart';
import 'newCourses.dart';
import 'providerData.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context,data,child)=>
        Scaffold(
          body: (data.Categories.isEmpty)?Center(
            child: CircularProgressIndicator(),
          ):ListView(
            padding: EdgeInsets.all(15),
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset('images/LogoODC.png',height: 80,width: 160,)),
              ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Container(
                    padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height*0.23,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.red,width: 8
                            )
                        )

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Enter your code to',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Text('get your course',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width*0.6,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    focusColor: Colors.black,
                                    fillColor: Colors.black12,
                                    hintStyle: TextStyle(color: Colors.white),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 3),
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onChanged: (input) {
                                  data.registerName = input;
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'feild is required';
                                  } else
                                    return null;
                                },
                              ),
                            ),
                            SizedBox(width: 7,),
                            CircleAvatar(radius: 25,
                              backgroundColor: Color(0xffFF6600),
                              child: Icon(Icons.arrow_forward,color: Colors.white,),
                            )
                          ],
                        )
                      ],
                    )
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                      },
                      child: Text('See All',style: TextStyle(decoration: TextDecoration.underline),))
                ],),
              SizedBox(height: 18,),
              Container(
                height: MediaQuery.of(context).size.height*0.17,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>
                    data.getCategories()[index]
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New courses',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewCourses()));
                      },
                      child: Text('See All',style: TextStyle(decoration: TextDecoration.underline,color: Color(0xffFF6600)),))
                ],),
              SizedBox(height: 15,),
              Container(
                height: MediaQuery.of(context).size.height*0.25,
                width: double.infinity,
                child:ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*0.175,
                                width: MediaQuery.of(context).size.width*0.58,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Image.asset('images/course.png',fit: BoxFit.fill,),

                              ),
                              Text('category$index',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
                            ],
                          ),
                        )
                ) ,
              )
            ],
          )
        )
    );
  }
}
