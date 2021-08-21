import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
import 'package:flutter_application_1/screens/login/categories/categories.dart';
import 'package:flutter_application_1/screens/login/categories/goods/details1.dart';
import 'package:flutter_application_1/screens/login/categories/goods/details2.dart';
import 'package:flutter_application_1/screens/login/categories/goods/details3.dart';
import 'package:flutter_application_1/screens/login/categories/goods/details4.dart';
import 'package:flutter_application_1/screens/login/login.dart';
//import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle( 
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    //statusBarBrightness: Brightness.dark,

  ));
  runApp(getMyAppRootWidget());
}

Widget getMyAppRootWidget() {
  Widget materialAppWidget = new MaterialApp(
    initialRoute:'/' ,
    routes: <String,WidgetBuilder>{
      '/':(context)=> HomeScreen(),
      '/second':(context)=> LoginScreen(),
      '/third' :(context)=> CategoriesScreen(),
      '/fourth':(context)=> DetailsScreen1(),
      '/fivth':(context)=> DetailsScreen2(),
      '/sixth':(context)=> DetailsScreen3(),
      '/sevth': (context) => DetailsScreen4(),
      },
    theme:ThemeData(
      primaryColor: Colors.red,
      buttonColor: Colors.transparent,
    textTheme: TextTheme(

      headline6: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold,fontFamily: 'Raleway',color: Colors.black),
    )
    ),
    
    //home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  );
  return materialAppWidget;
}