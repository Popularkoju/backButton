
import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  int backCounter =0;

  @override
  Widget build(BuildContext context) {
    return
      WillPopScope(
        onWillPop: () {
      // showDialog(
      //   context: context,
      //   builder: (context) => new AlertDialog(
      //     title:  Text('Are you sure?'),
      //     content:  Text('Do you want to back'),
      //     actions: <Widget>[
      //       TextButton(
      //         onPressed: () => Navigator.of(context).pop(false),
      //         child:  Text('No'),
      //       ),
      //       TextButton(
      //         onPressed: () {
      //           Navigator.of(context).pop(true);
      //           Navigator.of(context).pop(true);
      //         },
      //         child:  Text('Yes'),
      //       ),
      //     ],
      //   ),
      // );
      backCounter++;
      if (backCounter > 1) {
        Navigator.pop(context);
        backCounter = 0;
      } else {

        Future.delayed(Duration(seconds: 1)).then((value) {
          backCounter = 0;
        });
      }
      return Future.value(false);
    },child: Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Press back twice \n to go back"
          ),
        ),
      ),
    ),);
  }
}
