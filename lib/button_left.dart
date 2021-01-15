import 'package:flutter/material.dart';

class ButtonLeft extends StatelessWidget {

  final double top;
  final double left;
  final Function onPressed;
  final String text;
  final bool check;

  const ButtonLeft({this.top,this.left,this.onPressed,this.text,this.check=true});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Transform.rotate(
        angle: 29.85,
        child: check ? Column(
         children: [
           FlatButton(
               onPressed: onPressed,
               highlightColor: Colors.transparent,
               splashColor: Colors.transparent,
               child: Text(text,
                 style:TextStyle(color: Colors.yellow,letterSpacing: 2.0,fontSize: 20) ,)
           ),

          Transform.rotate(
            angle: 0,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
              ),
            ),
          )
       ],

      ):FlatButton(
            onPressed: onPressed,
            child: Text(text,style:TextStyle(color: Colors.white,letterSpacing: 2.0,fontSize: 18) ))

      ),
    );
  }
}
