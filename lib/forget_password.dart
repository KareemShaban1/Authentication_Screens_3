import 'package:authentication_flutter_app/button_left.dart';
import 'package:authentication_flutter_app/configuration.dart';
import 'package:authentication_flutter_app/header_left.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
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

                ButtonLeft(top:140, left:-20, text:'Sign In',check: false,onPressed: ()=> Navigator.pushReplacementNamed(context, 'login')),

                ButtonLeft(top:280, left:-20, text:'Sign Up',check: false,onPressed: ()=> Navigator.pushReplacementNamed(context, 'signUp')),

                ButtonLeft(top:450, left:-54, text:'Forget Password'),


                Positioned(
                    top: 120,
                    left: 130,
                    child: Text("Forget Password",style: TextStyle(color: Colors.grey[600],fontSize: 30,fontWeight: FontWeight.bold),)),


                CustomTextField(title: 'Email address',icon: Icons.email_outlined,isPassword: false,top: 200,),


                CircularShape(top: 540,),

                AuthButton(text: 'Submit',top:350,left:140 ,)

              ],
            )
          ],
        ),
      ),
    );
  }
}
