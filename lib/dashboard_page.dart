import 'package:flutter/material.dart';

import 'brouse_products.dart';
import 'business_inquiry.dart';
import 'locate_point_page.dart';
import 'lsce_story_page.dart';
import 'my_dashboard_page.dart';
import 'news_and_event_page.dart';
import 'widgets/app_bar.dart';

import 'widgets/bottom_navigation_bar.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
              height: height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Cardelement(
                  image: 'assets/available.png',
                  text: 'LSCE Story',
                  function: (){
                      Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                    return LsceStoryPage(

                       image: 'assets/available.png',
                     text: 'LSCE Story',

                    );
                  }
                  ),
                );
                  },
                ),
                 Cardelement(
                  image: 'assets/product.png',
                  text: 'Browse Products',
                  function: (){
                      Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                    return BrouseProductPage(
                image: 'assets/product.png',
                  text: 'Browse Products',
                    );
                  }
                  ),
                );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  Cardelement(
                  image: 'assets/businessinquiry (1).png',
                  text: 'Business Enquiry',
                  function: (){
                      Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                    return BusinessInduiryPage(
                          image: 'assets/businessinquiry (1).png',
                  text: 'Business Enquiry',
                    );
                  }
                  ),
                );
                  },
                ),
                  Cardelement(
                  image: 'assets/locateplant.png',
                  text: 'Locate Point',
                  function: (){
                      Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                    return LocatePointPage(
                        image: 'assets/locateplant.png',
                  text: 'Locate Point',
                    );
                  }
                  ),
                );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
             Cardelement(
                  image: 'assets/userdashboard.png',
                  text: 'My Dashboard',
                  function: (){
                      Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                    return MyDashboardPage(
                         image: 'assets/userdashboard.png',
                  text: 'My Dashboard',
                    );
                  }
                  ),
                );
                  },
                ),
                Cardelement(
                  image: 'assets/news_events (1).png',
                  text: 'News and Events',
                  function: (){
                      Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                    return NewsAndEventPage(
                    image: 'assets/news_events (1).png',
                  text: 'News and Events',
                    );
                  }
                  ),
                );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}

class Cardelement extends StatelessWidget {
  String text;
  String image;
  Function function;
  Cardelement({
    @required this.text,
    @required this.image,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
          child: Container(
        decoration: BoxDecoration(
          //  color: Color(0XFF0D325E),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.blue[400],
            width: 2,
          ),
        ),
        height: 150,
        width: 150,
        child: Card(
          color: Color(0XFF0D325E),
          elevation: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                height: 60,
                width: 60,
                image: AssetImage(image),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    // color: Color(0xFF5458A7),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
