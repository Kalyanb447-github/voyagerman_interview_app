import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_bar.dart';
class MyDashboardPage extends StatefulWidget {
       String text;
  String image;

  MyDashboardPage({
    @required this.text,
    @required this.image,
  });
  @override
  _MyDashboardPageState createState() => _MyDashboardPageState();
}

class _MyDashboardPageState extends State<MyDashboardPage> {
 @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        // color: Color(0xFF1C6BB0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF0D325E),
              const Color(0xFF1C6BB0),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
          ),
        ),

        child: ListView(
          children: <Widget>[
            AppbarWidget(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 100,
              child: Image(
                image: AssetImage(widget.image),
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        // color: Color(0xFF5458A7),
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                  ),
               
          
                  
                ],
              ),
            ),
          
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  CardElement(),
            SizedBox(
              width: 20,
            ),
            CardElement(),
              ],
            ),
               SizedBox(
              height: 20,
            ),
            CardElement2(),
              SizedBox(
              height: 10,
            ),
            CardElement2(),
              SizedBox(
              height: 10,
            ),
            CardElement2(),
           
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}


class CardElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return   Container(
            //  margin: EdgeInsets.only(left: 80, right: 80),
              decoration: BoxDecoration(
                  //color: Colors.grey,
                   borderRadius: BorderRadius.circular(15)),
              height: 150,
              width: 150,
              child: Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                      SizedBox(
                    height: 10,
                  ),
                      Image(
                    height: 50,
                    image: AssetImage('assets/transaction (2).png'),
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                   'Total order passed\n45650',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF5458A7),
                        // color: Color(0xFF5458A7),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  ],
                ),
              ),
               
            );
  }
}


class CardElement2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return   Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(8)),
              height: 60,
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0XFF0D325E),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        )),
                    height: 800,
                    width: 100,
                    child: Center(
                      child: Text(
                        'Orders',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            // color: Color(0xFF5458A7),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                       color: Color(0XFF0D325E),
                    height: 800,
                    width: width - 100 - 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.brightness_1,
                                  size: 15,
                                  color: Color(0XFF0D325E),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Dec 23 2019',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      // color: Color(0xFF5458A7),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),

                          SizedBox(
                          width: 30,
                        ),

                        Container(
                          height: 100,
                          child: Image(
                            height: 20,
                            width: 20,
                            image: AssetImage('assets/move-to-next.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}