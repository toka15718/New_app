import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}
class _LoginScreenState extends State<LoginScreen> {
  //This function is called at every render of project
  Widget build(BuildContext context) {
    
    return getLoginWidget();
  }
  Widget getLoginWidget(){
    var _blankFocusNode = new FocusNode();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(310.0),
      child: AppBar(
        flexibleSpace:SingleChildScrollView(
          child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 60.0),
          child:Container(
            padding: EdgeInsets.all(100.0),
             decoration:BoxDecoration(
               color: Colors.white,
               image:DecorationImage(image:AssetImage('assets/images/icon-08.jpeg'),),),),),
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(bottom: 50.0,left: 125.0),
              child: Text('Find your',style: TextStyle(fontFamily: 'Montserrat' ,fontSize: 32.0,color: HexColor("#0F173E"),fontWeight: FontWeight.bold,height: 0.4),),),
            subtitle: Padding(
                padding: EdgeInsets.only(bottom: 0.0, left: 89.0),
                child: Text(
                  'unique piece!',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 32.0,
                      color: HexColor("#0F173E"),
                      fontWeight: FontWeight.bold,
                      height: -0.7),
                ),
              ),
            ),
               
               ]),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      ),
      body:GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          // SystemChannels.textInput.invokeMethod('TextInput.hide');
          FocusScope.of(context).requestFocus(_blankFocusNode);
        },
        child: getBodyWidget(),)
    );
  }
  Widget getBodyWidget(){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left:10.0,right:10.0),
                        child:TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (String? value) {
                          },
                          onSaved: (String? value) {
                          },
                          decoration: InputDecoration(
                              labelText: 'E-mail',
                              //enabledBorder: ,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.none)),
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 14, bottom: 6, top: 8),
                              focusedBorder: OutlineInputBorder(
                                  // borderSide: BorderSide(color: Colors.white, style: BorderStyle.none),
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.zero))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter your email';
                            }
                            if (!value.contains('@')) {
                              return "Please enter a valid email";
                            }
                          },
                        ),),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(padding: EdgeInsets.only(left:10.0,right:10.0),
                        child:TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          onFieldSubmitted: (String? value) {
                          },
                          onSaved: (String? value) {
                          },
                          decoration: InputDecoration(
                              labelText: 'Password',

                              //enabledBorder: ,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.none)),
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 20, bottom: 6, top: 8),
                              focusedBorder: OutlineInputBorder(
                                  // borderSide: BorderSide(color: Colors.white, style: BorderStyle.none),
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.zero))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter your password';
                            }
                            if (value.length < 8) {
                              return "Password must be greater than 8 characters";
                            }
                          },
                        ),),
                        SizedBox(
                          height: 40,
                        ),
                                                Padding(
                          //alignment: Alignment.topCenter,
                          padding: EdgeInsets.only(top: 30.0, left: 160.0),
                          child: Text('Sign up with'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.0, right: 3.0),
                          child: Center(
                            child: Container(
                                height: 10.0,
                                child: Icon(
                                  Icons.facebook,
                                  color: HexColor('090E29'),
                                  size: 69.0,
                                )),
                          ),
                        ),
                        Container(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 60.0, left: 100.0),
                              child: Row(
                                children: [
                                  Text('Already have an account?'),
                                  Row(
                                    children: [
                                      Text(
                                        'Sign in',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                            //Text('Already have an account? Sign in'),

                            )
                      ],
                    ))
                  ],
                ))
                
          ],
        ),
      floatingActionButton:Padding(
                            padding: EdgeInsets.only(bottom: 110.0, right: 90.0),
                            child: ElevatedButton(
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.indigo[200],
                                fixedSize: Size(200.0, 45.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                          ),
    );
  }
}