

import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_bar.dart';

class LocatePointPage extends StatefulWidget {
    String text;
  String image;

  LocatePointPage({
    @required this.text,
    @required this.image,
  });

  @override
  _LocatePointPageState createState() => _LocatePointPageState();
}

class _LocatePointPageState extends State<LocatePointPage> {
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
                mainAxisAlignment: MainAxisAlignment.end,
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
                  SizedBox(
                    width: 60,
                  ),
                  
                  // filter (1)
                  Image(
                    height: 20,
                    image: AssetImage('assets/filter (1).png'),
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CardElement(),
            SizedBox(
              height: 20,
            ),
             
            CardElement(),
            SizedBox(
              height: 20,
            ),
            CardElement(),
     
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
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.red,
                   borderRadius: BorderRadius.circular(8),
                   border: Border.all(
            color: Colors.blue[400],
            // width: 2,
          ),
          ),
                  
              height: 100,
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                       // color: Color(0XFF0D325E),
                       color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        )),
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Text(
                        'Gaati',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0XFF0D325E),
                            // color: Color(0xFF5458A7),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 100,
                    width: width - 100 - 40 -2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                        'capacity info of plant\n goes here',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0XFF0D325E),
                            // color: Color(0xFF5458A7),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                        SizedBox(
                                  height: 10,
                                ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.brightness_1,
                                  size: 15,
                                  color: Color(0XFF0D325E),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Get in touch',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      // color: Color(0xFF5458A7),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),

                          SizedBox(
                          width: 40,
                        ),

                        Container(
                          height: 100,
                          child: Image(
                            height: 35,
                            width: 35,
                            image: AssetImage('assets/move-to-next (1).png'),
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