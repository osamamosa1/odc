import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc/home.dart';
import 'package:provider/provider.dart';

import 'providerData.dart';

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context,data,child)=>Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(40),
            child: InkWell(
                onTap: (){
                  data.notifyListeners();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                data.homePageIndex=0;
                },
                child: Icon(Icons.arrow_back)),
          ),
          Expanded(
            child: Container(

              width: double.infinity,
              child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2), itemBuilder: (context,index) => data.Categories[index]

              ),
            ),
          )
        ],
      ),
    ));
  }
}
