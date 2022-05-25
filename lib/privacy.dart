import 'package:flutter/material.dart';
class Privacy extends StatelessWidget {
  const Privacy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(

          padding: EdgeInsets.all(30),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Text('Privacy ',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25 ),),

                Text('policy',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25,color: Color(0xffFF6600) ),),

              ],
            ),
            SizedBox(height: 15,),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit'
                ', sed do eiusmd tempor incididunt ut labore et'
                ' dolore magna aliqua Lorem ipsum dolor sit amet,'
                ' consectetur adipiscing elit, sed do eiusmd tempor'
                ' incididunt ut labore et dolore magna aliqua. Lorem '
                'ipsum dolor sit amet, consectetur adipiscing elit,'
                ' sed do eiusmd tempor incididunt ut labore'
                ' et dolore magna aliqua. Lorem ipsum dolor sit amet,'
                ' consectetur adipiscing elit, sed do eiusmd tempor incididunt'
                ' ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet,'
                ' consectetur adipiscing elit, sed do eiusmd tempor '
                'incididunt ut labore et dolore magna aliqua. Lorem '
                'ipsum dolor sit amet, consectetur adipiscing elit,'
                ' sed do eiusmd tempor incididunt ut labore et dolore magna aliqua.'
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmd'
                ' tempor incididunt ut labore et dolore magna aliqua.'
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                ' sed do eiusmd tempor incididunt ut labore et dolore magna aliqua.'
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmd'
                ' tempor incididunt ut labore et dolore magna aliqua.'
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                ' sed do eiusmd tempor incididunt ut labore et dolore magna aliqua. '
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmd tempor incididunt ut labore et dolore magna aliqua.'
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                ' sed do eiusmd tempor incididunt ut labore et dolore magna aliqua. '
                'Lorem ipsum dolor sit amet, consectetur adipiscing'

                ' elit, sed do eiusmd tempor incididunt ut labore et'
                ' dolore magna aliqua. Lorem ipsum dolor sit amet,'
                ' consectetur adipiscing elit, sed do eiusmd tempor'
                ' incididunt ut labore et dolore magna aliqua.  ')
          ],
        ),
      ),
    );
  }
}
