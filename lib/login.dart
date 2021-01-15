import 'package:authentication_flutter_app/button_left.dart';
import 'package:authentication_flutter_app/configuration.dart';
import 'package:authentication_flutter_app/header_left.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.only(top: 0),
          physics: BouncingScrollPhysics(),
          children: [
            Stack(
              children: [

                HeaderLeft(),

                ButtonLeft(top:140, left:-1, text:'Sign In'),

                ButtonLeft(top:275, left:-20, text:'Sign Up',check: false,onPressed: ()=> Navigator.pushReplacementNamed(context, 'signUp')),

                ButtonLeft(top:450, left:-65, text:'Forget Password',check: false,onPressed: ()=> Navigator.pushReplacementNamed(context, 'forgetPassword')),


                Positioned(
                    top: 120,
                    left: 150,
                    child: Text("Welcome Back",style: TextStyle(color: Colors.grey[600],fontSize: 30,fontWeight: FontWeight.bold),)),


                CustomTextField(title: 'Email address',icon: Icons.email_outlined,isPassword: false,top: 200,),

                CustomTextField(title: 'Password',icon: Icons.lock,isPassword: true,top: 270,),

                CircularShape(top: 540,),

                AuthButton(text: 'Sign In',top:350,left:140 ,)

              ],
            )
          ],
        ),
      ),
    );
  }
}

