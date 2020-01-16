
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Container(
     // height: 80,
      color:Colors.transparent,
      child: AppBar(
      //  centerTitle: true,
       elevation: 0,
       title:   Container(
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
          Container(

            height: 25,
            width: 25,
                      child: Image(

         
              image: AssetImage('assets/settings.png'),
              fit: BoxFit.contain,
            ),
          ),
                    SizedBox(width: 10,),

           Container(
            height: 25,
            width: 25,
                      child: Image(

         
              image: AssetImage('assets/notification.png'),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}