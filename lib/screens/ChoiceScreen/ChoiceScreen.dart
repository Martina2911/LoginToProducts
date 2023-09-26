import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products/screens/TabBarScreen/TabBarScreen.dart';

import '../product_screen/product_screen.dart';

class ChoiceScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Welcome"),
       backgroundColor: Colors.blueGrey),
     body: Center(
       child: Column( mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
         GestureDetector(
           onTap: (){
     Get.to(ProductScreen());
     },
           child:  Container(
               width: 350,
               height: 100,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12.0),
                 border: Border.all(color: Colors.blueGrey,width: 3.0),
                 color: Colors.white54,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 2,
                     blurRadius: 5,
                     offset: Offset(0, 2),
                   ),
                 ],),
               child: Center(child: Text("Products 1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))),
         ),
     SizedBox(height: 30,),
     GestureDetector(
       onTap: (){
         Get.to(TabBarScreen());
       },
       child:  Container(
           width: 350,
           height: 100,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12.0),
             border: Border.all(color: Colors.blueGrey,width: 3.0),
             color: Colors.white54,
             boxShadow: [
               BoxShadow(
                 color: Colors.grey.withOpacity(0.5),
                 spreadRadius: 2,
                 blurRadius: 5,
                 offset: Offset(0, 2),
               ),
             ],),
           child: Center(child: Text("Products 2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))),
     ) ],),
     ),
   );
  }

}