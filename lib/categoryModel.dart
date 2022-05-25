import 'package:flutter/material.dart';

class CategoryModel extends StatelessWidget {
  CategoryModel({this.tittle, this.image, this.id});
  final tittle,image,id;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
      child: Column(
        children: [
          InkWell(
            onTap: (){},
            child: Container(
              height: MediaQuery.of(context).size.height*0.13,
              width: MediaQuery.of(context).size.width*0.22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)
              ),
              child: Image.network('$image'),

            ),
          ),
          Text('$tittle')
        ],
      ),
    );
  }
}
