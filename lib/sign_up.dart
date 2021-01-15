import 'package:authentication_flutter_app/button_left.dart';
import 'package:authentication_flutter_app/configuration.dart';
import 'package:authentication_flutter_app/header_left.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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

                ButtonLeft(top:140, left:-20,check: false ,text:'Sign In',onPressed: ()=> Navigator.pushReplacementNamed(context, 'login'),),

                ButtonLeft(top:275, left:-5, text:'Sign Up',),

                ButtonLeft(top:450, left:-65, text:'Forget Password',check: false,onPressed: ()=> Navigator.pushReplacementNamed(context, 'forgetPassword')),


                Positioned(
                    top: 120,
                    left: 150,
                    child: Text("Let's Sign Up",style: TextStyle(color: Colors.grey[600],fontSize: 30,fontWeight: FontWeight.bold),)),

                CustomTextField(title: 'UserName',icon: Icons.supervised_user_circle,isPassword: false,top: 200,),

                CustomTextField(title: 'Email address',icon: Icons.email_outlined,isPassword: false,top: 270,),

                CustomTextField(title: 'Password',icon: Icons.lock,isPassword: true,top: 340,),

                CircularShape(top: 540,),

                AuthButton(text: 'Sign Up',top:420,left:140 ,)

              ],
            )
          ],
        ),
      ),
    );
  }
}
