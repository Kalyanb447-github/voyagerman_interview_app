
import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_bar.dart';

class BusinessInduiryPage extends StatefulWidget {
      String text;
  String image;

  BusinessInduiryPage({
    @required this.text,
    @required this.image,
  });

  @override
  _BusinessInduiryPageState createState() => _BusinessInduiryPageState();
}

class _BusinessInduiryPageState extends State<BusinessInduiryPage> {
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
                    width: 40,
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
              height: 50,
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
              margin: EdgeInsets.only(left: 80, right: 80),
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
                    image: AssetImage('assets/check-list.png'),
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                   'check\nproduct\navailability',
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