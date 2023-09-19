import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products/screens/login/controller/login_controller.dart';

import '../../components/textfield.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final log =Get.put(loginController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text('Login',style: TextStyle(color: Colors.blueGrey, fontSize: 25, fontWeight: FontWeight.w500),)),
      body:SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Container(
    height: 300,
    width: MediaQuery.of(context).size.width,
    child:
    BackdropFilter(filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
    child:  Transform.scale(
        scale: 1.17,
        child:Container(
    decoration:BoxDecoration(
    image: DecorationImage(image:NetworkImage("https://www.altamoda.com.gr/image/cache/catalog/blog-posts/welcome-1140x700.jpg"),
    )
    ),))),),
           SizedBox(height: 10,),
           Row(children:[SizedBox(width: 20,),Align(alignment: Alignment.centerLeft,child:Text('Username',style: TextStyle(color: Colors.blueGrey, fontSize: 18, fontWeight: FontWeight.w500),),),]),
           SizedBox(height: 10,),
           customTextfield(obs: false, TextEdit: log.userNameController,labelText: "Enter your Username",),
           SizedBox(height: 20,),
           Row(children:[SizedBox(width: 20,),Align(alignment: Alignment.centerLeft,child:Text('Password',style: TextStyle(color: Colors.blueGrey, fontSize: 18, fontWeight: FontWeight.w500),),),]),
           SizedBox(height: 10,),
           customTextfield(obs: true, TextEdit: log.passController,labelText: "Enter your Password"),
           SizedBox(height: 20,),
           ElevatedButton(onPressed: (){log.log();},
             style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey)) ,
             child: Text("Login",style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400))),

         ],
        ),
      ) );
  }

}