import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool isPassword;
  final String title;
  final IconData icon;
  final double top;

  const CustomTextField({this.isPassword,this.title,this.icon,this.top});
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: 100,
        child: Container(
          width: 280,
          child: TextField(
            style: TextStyle(
              color: Colors.black
            ),
            obscureText: isPassword,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(icon),
                hintText: title

            ),
          ),
        ));
  }
}

class CircularShape extends StatelessWidget {

  final double top;

  const CircularShape({this.top});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        right: 0,
        child: Container(
          height: 120,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomLeft: Radius.circular(100))
          ),
        ));
  }
}

class AuthButton extends StatelessWidget {
  final String text;
  final double top;
  final double left;


  const AuthButton({this.text,this.top,this.left});

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: top,
      left: left,

      child: Container(
          height: 50,
          width: 200,

          // margin: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black87
          ),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context) => FacebookSignUp()),);
            },
            child: Center(
              child: Text(text, style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          )
      ),
    );
  }
}
