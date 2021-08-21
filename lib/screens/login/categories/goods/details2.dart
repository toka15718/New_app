import 'package:flutter/material.dart';

//import 'package:hexcolor/hexcolor.dart';
class DetailsScreen2 extends StatefulWidget {
  _DetailsScreen2State createState() {
    return _DetailsScreen2State();
  }
}

class _DetailsScreen2State extends State<DetailsScreen2> {
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 240.0),
        child: SizedBox(
            height: 100,
            child: Image(image: AssetImage('assets/images/icon-07.jpeg'))),
      ),
      backgroundColor: Colors.white,
      body: _detailCategory(),
    );
  }

  Widget _detailCategory() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey[700],
              size: 20.0,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
          expandedHeight: 350.0,
          flexibleSpace: const FlexibleSpaceBar(
            background: Image(
              image: AssetImage('assets/images/images1.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cupbord',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 0.0),
              child: Row(
                children: [
                  Text(
                    'Cupbord',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.0, left: 25.0),
              child: Row(
                children: [
                  Text(
                    '\$700.-',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[300]!),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 13.0, left: 25.0, right: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "This piece of furniture has a wonderful and attractive appearance and is made of original wood and painted in distinctive colors and has advantages in use.",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 15,
                          color: Colors.grey[700]),
                      maxLines: 5,
                      //textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 23.0),
                child: Row(children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          'Quantity',
                          style: TextStyle(
                              fontFamily: 'Raleway', color: Colors.grey[700]),
                        ),
                      ),
                      Container(height: 3.0),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.add_box_outlined,
                              size: 20,
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            ' 01 ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.indeterminate_check_box_outlined,
                            size: 20,
                            color: Colors.grey[800],
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.0, left: 65.0),
                      child: Text(
                        'Colors',
                        style: TextStyle(
                            fontFamily: 'Raleway', color: Colors.grey[700]),
                      ),
                    ),
                    Container(height: 1.5),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 145.0),
                          child: Icon(
                            Icons.circle_outlined,
                            color: Colors.black38,
                            size: 20,
                          ),
                        ),
                        Container(width: 5.0),
                        Icon(
                          Icons.circle_rounded,
                          color: Colors.pink[100],
                          size: 20,
                        ),
                        Container(width: 5.0),
                        Icon(
                          Icons.circle_rounded,
                          color: Colors.green[400],
                          size: 20,
                        ),
                        Container(width: 5.0),
                        Icon(
                          Icons.circle_rounded,
                          color: Colors.blue,
                          size: 20,
                        ),
                        Container(width: 5.0),
                        Icon(
                          Icons.circle_rounded,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ]),
        )
      ],
    );
  }
}    
