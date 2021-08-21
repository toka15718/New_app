import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {



  //This function is called at every render of projectc
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold(

        backgroundColor: Colors.white,
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child:AppBar(
        flexibleSpace:ListTile(title:Padding(padding:EdgeInsets.only(top: 100.0,left: 110.0) , child: Text('Decore &',style: TextStyle(fontFamily: 'Montserrat' ,fontSize: 36.0,color: HexColor("#0F173E"),fontWeight: FontWeight.bold),),),
        subtitle: Padding(padding:EdgeInsets.only(left: 130.0) ,child: Text('enjoy!',style: TextStyle(fontFamily: 'Montserrat' ,fontSize: 36.0,color: HexColor("#0F173E"),fontWeight: FontWeight.bold,height: 0.8,letterSpacing: 0.0),),),),
          backgroundColor: Colors.transparent,
          elevation: 0.0,),),
          body: getBodyWidget(),   
        );
  }
        Widget getBodyWidget(){
          return Scaffold(
            bottomSheet:Padding(padding: EdgeInsets.only(bottom: 40.0,left: 90.0), 
              child:Row(
              children:[ 
                Text('Already have an account?',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 16.0,
                color: Colors.black,
              )),
                Text('Sign in',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 16.0,
                color: Colors.black,fontWeight: FontWeight.bold
              ))
            ]),),
            floatingActionButton:Padding(padding: EdgeInsets.only(bottom: 50.0,right: 90.0),child: ElevatedButton(child: Text('Get started',style: TextStyle(fontFamily: 'Raleway' ,fontSize: 18.0,color:Colors.white,),),onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
            style:ElevatedButton.styleFrom(primary: Colors.indigo[200],fixedSize: Size(200.0, 45.0),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),),),),),
          body: Center( 
          child: Padding(padding: EdgeInsets.only(right:20.0 ,left:20.0 ),
          child: Container(
             decoration:BoxDecoration(
               color: Colors.white,
               image:DecorationImage(alignment:Alignment.topCenter,scale: 1.0 ,image:AssetImage('assets/images/icon-09.jpeg'),),),),),)
          );
        }
}
