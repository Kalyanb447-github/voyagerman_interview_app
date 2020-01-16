import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent
));
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OpeningPage(),
    );
  }
}

class OpeningPage extends StatefulWidget {
  @override
  _OpeningPageState createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      //backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.srgbToLinearGamma(),
            image: AssetImage(
              'assets/app_bg.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          //     decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/app_bg.jpg'),
          //     fit: BoxFit.fill,
          //   ),
          // ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 150,
                left: width * .35,
                height: 150,
                child: Column(
                  children: <Widget>[
                    Image(
                      height: 100,
                      image: AssetImage('assets/fire_logo.jpg'),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          'LIBERTY',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              // color: Color(0xFF5458A7),
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                // left: width * .35 ,
                height: height * .4,
                width: width * .8,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 10, left: 40),
                          child: Text(
                            'LSCE NEWS DECK',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                // color: Color(0xFF5458A7),
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 40),
                        child: Image(
                          height: 100,
                          width: width * .55,
                          image: AssetImage('assets/see.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 40),
                        child: Text(
                          'who gave me the opportunity to work under him for my project on the topic “Tutor4u”. Time and time again,Miss has helped me in explaining how to do a project. Not only was this, whenever I faltered in my coding and was not able to understandwhat went .',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              // color: Color(0xFF5458A7),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.brightness_1,
                            color: Colors.grey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.brightness_1,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.brightness_1,
                            color: Colors.grey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.brightness_1,
                            color: Colors.grey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
          builder: (context){
            return LoginDashboard();
          }
        ),
        );
        },
              child: Container(
          height: 50,
          //color: Colors.transparent,
          // color: Colors.blue[900],
          color: Color(0XFF0D325E), 
         // color: Color(0xFF3a5b88).withOpacity(1),
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                width: MediaQuery.of(context).size.width * .4,
                child: Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 20,
                      // color: Colors.grey,
                      color: Color(0xFF5458A7),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .2,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 5,
                      height: 2,
                     color: Colors.white
                    ),
                     Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
