import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providerData.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context,data,child)=>SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              padding: EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                  Text('My Courses')
                ],
              ),
            ),
            Expanded(
              child: Container(

                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) =>
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black12
                                    )
                                )
                            ),
                            child: ListTile(
                              title: Text('Course$index'),
                              subtitle: Text('about course$index'),
                              leading: Image.asset('images/course.png'),

                            ),
                          )
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
