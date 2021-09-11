import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle( 
    statusBarColor: Colors.black,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    initialRoute:'/' ,
    routes: <String,WidgetBuilder>{
      '/':(context)=> HomeScreen(),
      },
    debugShowCheckedModeBanner: false,
  );
}
}