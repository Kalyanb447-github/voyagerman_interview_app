import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_bar.dart';

class LsceStoryPage extends StatefulWidget {
  String text;
  String image;

  LsceStoryPage({
    @required this.text,
    @required this.image,
  });
  @override
  _LsceStoryPageState createState() => _LsceStoryPageState();
}

class _LsceStoryPageState extends State<LsceStoryPage> {
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
                    width: 70,
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
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: height / 4,
              //color: Colors.red,
              child: Image(
                // height: 20,
                image: AssetImage(
                    'assets/LIB0066-Liberty-Europe-A4-Brochure-ePDF-FINAL-3.jpg'),
                fit: BoxFit.fill,
              ),
            ),
              SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: height / 4,
              //  color: Colors.red,
              child: Image(
                // height: 20,
                image: AssetImage(
                    'assets/LIB0066-Liberty-Europe-A4-Brochure-ePDF-FINAL-5.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
