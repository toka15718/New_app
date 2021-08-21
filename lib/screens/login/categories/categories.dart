import 'package:flutter/material.dart';
class CategoriesScreen extends StatefulWidget {
  _CategoriesScreenState createState() {
    return _CategoriesScreenState();
  }

}
class _CategoriesScreenState extends State<CategoriesScreen> {
    Widget build(BuildContext context) {
    
    return getCategorieWidget();
  }
  Widget getCategorieWidget(){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading:Padding(padding: EdgeInsets.only(top: 18.0,left: 20.0),
           child:Container(
             decoration:BoxDecoration(
               color: Colors.white,
               image:DecorationImage(alignment:Alignment.topCenter,scale: 10.0 ,image:AssetImage('assets/images/icon-04.jpeg'),),),),),
               title: Padding(
                 padding: EdgeInsets.only(left:80.0,top: 14.0 ),
                 child: Row(children: [Text('Categories',
                 style: TextStyle(
                   fontFamily: 'Raleway',
                   fontSize: 22.0,
                   color: Colors.black,
              ),),]),),
              flexibleSpace:Padding(padding: EdgeInsets.only(top: 44.0,left: 130.0), 
              child:Container(
                decoration:BoxDecoration(
                  color: Colors.white,
                  image:DecorationImage(alignment:Alignment.topCenter,scale: 10.0 ,image:AssetImage('assets/images/icon-05.jpeg'),),),),),

      ),),
          body: stackImage(),
    );
  }
   Widget stackImage(){
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Padding(padding: EdgeInsets.only(top: 23.0,left: 8.0),child: Row(children: [
           ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.tune,
              color: Colors.black,
              size: 20.0,
            ),label: Text('Price',
          style: TextStyle(fontFamily: 'Raleway' ,fontSize: 14.0,color:Colors.black,),),style: ElevatedButton.styleFrom(alignment: Alignment(-0.9,0.0),primary: Colors.white,fixedSize: Size(90.0, 35.0),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),side: BorderSide(color: Colors.grey)),),),
          Padding(padding: EdgeInsets.only(right: 5.0)),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
              color: Colors.black,
              size: 20.0,
            ),
            label: Text(
              'Tags',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              alignment: Alignment(-1.0, 0.0),
              primary: Colors.white,
              fixedSize: Size(90.0, 35.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.grey)),
            ),
          ),
            
          Padding(padding: EdgeInsets.only(right: 5.0)),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
              color: Colors.black,
              size: 20.0,
            ),
            label: Text(
              'Style',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              alignment: Alignment(-1.3, 0.0),
              primary: Colors.white,
              fixedSize: Size(100.0, 35.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.grey)),
            ),
          ),
        
          Padding(padding: EdgeInsets.only(right: 5.0)),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
              color: Colors.black,
              size: 20.0,
            ),
            label: Text(
              'Color',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              alignment: Alignment(-1.3, 0.0),
              primary: Colors.white,
              fixedSize: Size(100.0, 35.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.grey)),
            ),
          ),
            ]),),
          ),),
      body: Stack(alignment: Alignment.center,
         children: [
           Padding(padding:EdgeInsets.only(bottom: 280.0,right: 180.0),
           child:Container(
             width: 180.0,
             height: 230.0,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image:DecorationImage(
                    alignment:Alignment.topLeft ,
                    image:AssetImage('assets/images/images.jpeg'),
                    fit: BoxFit.fill
                    ),),
                    child: TextButton(child: Container(
                        child: Column(children: [
                          Padding(padding: EdgeInsets.only(top: 165.0,right: 120.0),child: Text('Chair',style: TextStyle(
                           fontFamily: 'Raleway',
                           fontSize: 16.0,
                           color: Colors.black,
                         ),),),
                               Row(children: [ Padding(
                          padding: EdgeInsets.only(top: 0.0, left: 5.0),
                          child: Text(
                            'From',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 11.0,
                              color: Colors.black,
                              fontWeight:FontWeight.normal
                            ),
                          ),
                        ),
                          Padding(padding: EdgeInsets.only(top: 0.0, right: 10.5),
                          child: Text(
                            '\$500',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 22.0,
                              color: Colors.black,
                              fontWeight:FontWeight.bold
                            ),
                          ),
                        ),
                        ]),    
                        ],),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment(-1.3,-1.2),
                            scale: 10.0,
                            image: AssetImage('assets/images/icon-02.jpeg'),
                          ),
                        ),),onPressed: (){
                          Navigator.pushNamed(context, '/fourth');
                        }),
                    
           ),),
           /********************************************************** */
           Padding(
            padding: EdgeInsets.only(bottom: 280.0, left: 215.0),
            child: Container(
              width: 180.0,
              height: 230.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    alignment: Alignment.topLeft,
                    image: AssetImage('assets/images/images1.jpeg'),
                    fit: BoxFit.fill),
              ),
              child: TextButton(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 165.0, right: 120.0),
                          child: Text(
                            'bord',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0.0, left: 5.0),
                            child: Text(
                              'From',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 11.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0.0, right: 10.5),
                            child: Text(
                              '\$700',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 22.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ],
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment(-1.3, -1.2),
                        scale: 10.0,
                        image: AssetImage('assets/images/icon-02.jpeg'),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fivth');
                  }),
            ),
          ),
          /**************************************************************************** */
           Padding(
            padding: EdgeInsets.only(top: 210.0, right: 180.0),
            child: Container(
              width: 180.0,
              height: 230.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    alignment: Alignment.topLeft,
                    image: AssetImage('assets/images/download.jpeg'),
                    fit: BoxFit.fill),
              ),
              child: TextButton(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 165.0, right: 120.0),
                          child: Text(
                            'Fotah',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0.0, left: 5.0),
                            child: Text(
                              'From',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 11.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0.0, right: 10.5),
                            child: Text(
                              '\$300',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 22.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ],
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment(-1.3, -1.2),
                        scale: 10.0,
                        image: AssetImage('assets/images/icon-02.jpeg'),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sixth');
                  }),
            ),
          ),
          /****************************************************************** */
          Padding(
            padding: EdgeInsets.only(top: 210.0, left: 210.0),
            child: Container(
              width: 180.0,
              height: 230.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    alignment: Alignment.topLeft,
                    image: AssetImage('assets/images/download4.jpeg'),
                    fit: BoxFit.fill),
              ),
              child: TextButton(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 165.0, right: 120.0),
                          child: Text(
                            'Table',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0.0, left: 5.0),
                            child: Text(
                              'From',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 11.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0.0, right: 10.5),
                            child: Text(
                              '\$200',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 22.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ],
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment(-1.3, -1.2),
                        scale: 10.0,
                        image: AssetImage('assets/images/icon-02.jpeg'),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sevth');
                  }),
            ),
          ),
          /***********************************************Button******************** */
           Padding(padding: EdgeInsets.only(top: 495.0,left: 20.0),child: ElevatedButton(child: Text('Scan my space',style: TextStyle(fontFamily: 'Raleway' ,fontSize: 18.0,color:Colors.white,),),onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
            style:ElevatedButton.styleFrom(primary: Colors.indigo[200],fixedSize: Size(200.0, 45.0),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),),),),),
         
         
         ],
       ),
     );
   }
}