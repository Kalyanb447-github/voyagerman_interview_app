import 'package:flutter/material.dart';
import 'package:voyagerman_interview_app/sign_in_page.dart';

import 'dashboard_page.dart';

class ResgiterPage extends StatefulWidget {
  @override
  _ResgiterPageState createState() => _ResgiterPageState();
}

class _ResgiterPageState extends State<ResgiterPage> {
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
            //  AppbarWidget(),
            Container(
              // height: 80,
              color: Colors.transparent,
              child: AppBar(
                centerTitle: true,
                elevation: 0,
                title: Container(
                  height: 35,
                  width: 200,
                  margin: EdgeInsets.only(top: 20),
                  child: Image(
                    image: AssetImage('assets/libertylogobig.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                backgroundColor: Colors.transparent,
                actions: <Widget>[
                  // IconButton(
                  //   onPressed: (){},
                  //   icon: Icon(Icons.notifications),
                  // ),

                  SizedBox(
                    width: 10,
                  ),

                  Container(
                    height: 20,
                    width: 20,
                    child: Image(
                      image: AssetImage('assets/clear.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),

//             TextField(
//   focusNode: nodeOne,
// ),
// TextField(
//   focusNode: nodeTwo,
// ),     Padding(
            //Add padding around textfield
            SizedBox(
              height: height / 10 / 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "COMPANY NAME",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "NAME",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "EMAIL NAME",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "CONTACT NO",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "REMARKS",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Text(
              'CLICK TO READ POLICY BEFORE REGISTRATION',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  // color: Color(0xFF5458A7),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Container(
                //   height: 100,
                //   width: 100,
                //   child: Checkbox(
                //     value: false,

                //   ),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check_box_outline_blank,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'I AGREE WITH THE COMPANY POLICY',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      // color: Color(0xFF5458A7),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            SizedBox(
              height: height / 20,
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return DashboardPage();
                  }),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    height: 60,
                    image:
                        AssetImage('assets/cloud-storage-uploading-option.png'),
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'SUBMIT',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        // color: Color(0xFF5458A7),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              color: const Color(0xFF1C6BB0),
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
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Register',
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
    );
  }
}
