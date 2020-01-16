import 'package:flutter/material.dart';
import 'package:voyagerman_interview_app/sign_in_page.dart';

import 'register_oage.dart';
import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_bar.dart';

class LoginDashboard extends StatefulWidget {
  @override
  _LoginDashboardState createState() => _LoginDashboardState();
}

class _LoginDashboardState extends State<LoginDashboard> {
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
            SizedBox(),
            Container(
              height: 300,
              width: 250,
              child: Image(
                image: AssetImage('assets/icons/error.png'),
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Please register yourself to process further\n'
                'If you are a register user pkease sign in.',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    // color: Color(0xFF5458A7),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: const Color(0xFF03072D),
                      onPressed: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return ResgiterPage();
                          }),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              // color: Color(0xFF5458A7),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return SignInPage();
                          }),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueGrey,
                              // color: Color(0xFF5458A7),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
