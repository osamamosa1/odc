import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc/categories.dart';
import 'package:odc/homePage.dart';
import 'package:provider/provider.dart';
import 'profile.dart';
import 'providerData.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  initState (){
    initial();
    super.initState();
  }
  initial()async{
    Data data=Data();
    await data.refreshAccessToken();
    Future.delayed(Duration(seconds: 5));
   await data.getCategories();
    await data.getCourses();
    data.notifyListeners();
  }
  List Pages=[
    HomePage(),
    Categories(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context,data,child)=>
        SafeArea(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: data.homePageIndex,
              selectedItemColor: Color(0xffFF6600),
              onTap: (index){
                data.notifyListeners();
                data.homePageIndex=index;
              },
              items: [
                BottomNavigationBarItem(
                    label: '1',
                    icon: Icon(Icons.home_filled)),
                BottomNavigationBarItem(
                    label: '2',
                    icon: Icon(Icons.menu_book_rounded)),
                BottomNavigationBarItem(
                    label: '3',
                    icon: Icon(Icons.person))
              ],
            ),
            body: Pages[data.homePageIndex],
          ),
        )
    );
  }
}
