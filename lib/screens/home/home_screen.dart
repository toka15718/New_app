import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

@override

  //This function is called at every render of projectc
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold(
      backgroundColor: Colors.grey[900],
        appBar:AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          flexibleSpace:SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
            children: [
            Padding(padding: EdgeInsets.only(top: 23.0,left: 18.0) ,
              child: Text(
            'Universal AC Remote Control',
            style: TextStyle(
              height: 2.0,
              fontFamily: 'Roboto',
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w500),
          ),),
          Padding(
            padding: EdgeInsets.only(left: 50.0,top:35.0),
            child:ElevatedButton.icon(onPressed:(){}, icon: Icon(Icons.more_vert,
              color: Colors.white,
              size: 30.0,
              ), label: Text(''),
              style: ElevatedButton.styleFrom(
                      primary: Colors.blue, elevation: 0.0,alignment: Alignment(50.0,0.0),
                    ),
              )
          )
            ]
            ),),
          ),
         body:Column(
           children: [
             Row(
               children:[
                 Padding(padding: EdgeInsets.only(left:155.0,top: 90.0),
             child: Image(image: AssetImage('assets/images/900233.jpeg'),color: Colors.blue,width: 60.0,)
             ),
             Padding(
              padding: EdgeInsets.only(left: 30.0,top: 80.0),
              child: Text(
                'AC',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.blue,
                    fontSize: 23.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
             ]),
             Padding(padding: EdgeInsets.only(top: 10.0),
             child:Container(width: 370.0,
             child: Divider(color: Colors.grey[800],height: 0.1),),),
             Row(
               children:[
                 Padding(padding: EdgeInsets.only(left: 130.0,top: 10.0),
                 child:ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.group,
                 color: Colors.blue,
                 size: 50.0,
                 ),
                 style: ElevatedButton.styleFrom(primary: Colors.grey[900],elevation: 0.0)
                 , label: Text(
                  ''),),),
                 Padding(
                padding: EdgeInsets.only(right: 20.0, top: 20.0),
                child: Text(
                  'Share Us',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.blue,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
           ],),
           Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Container(
              width: 370.0,
              child: Divider(color: Colors.grey[800], height: 0.1),
            ),
          ),
           Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 130.0, top: 10.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.markunread,
                    color: Colors.blue,
                    size: 50.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900], elevation: 0.0),
                  label: Text(''),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0, top: 20.0),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.blue,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
           Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Container(
              width: 370.0,
              child: Divider(color: Colors.grey[800], height: 0.1),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.0, top: 15.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.blue,
                    size: 50.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900], elevation: 0.0),
                  label: Text(''),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0, top: 20.0),
                child: Text(
                  '(1) Your Remotes',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.blue,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 40.0,left: 30.0),
          child:Text('AC',style: TextStyle(fontFamily: 'Roboto',
                      color: Colors.blue,
                      fontSize: 97.0,
                      fontWeight: FontWeight.w300),),)
           ],
         ) ,   
        );
  }
}
