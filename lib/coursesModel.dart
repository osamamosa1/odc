import 'package:flutter/material.dart';

class CoursesModel extends StatelessWidget {
  CoursesModel({this.tittle, this.image, this.id});
  final tittle,image,id;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.black12
              )
          )
      ),
      child: ListTile(
        title: Text('$tittle'),
        subtitle: Text('about course$id'),
        leading: Image.network('$image'),

      ),
    ) ;
  }
}
