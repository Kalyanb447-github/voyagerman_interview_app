import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0XFF0D325E),
           //     backgroundColor: Colors.blue[700],

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: Colors.white,
            ),
            title: Text(
              "Contact",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: Text(
              "Search",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.vpn_key,
              color: Colors.white,
            ),
            title: Text(
              "Log in",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
  }
}