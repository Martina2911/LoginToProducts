import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customCont extends StatelessWidget{
  final title;
  final price;
  final quant;
  final total;
  const customCont({super.key, this.title, this.price, this.quant, this.total});
  @override
  Widget build(BuildContext context) {
  return Padding(padding:EdgeInsets.all(20)
  ,child: Container(
      width: 350,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.blueGrey,width: 3.0),
        color: Colors.white54,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],),
    child:
    Row(
      children: [
        SizedBox(width: 20,),
        Column( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
          Text("Title: $title",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 15,),
          Text("Price: $price",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
          SizedBox(height: 15,),
          Text("Quantity: $quant",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
          SizedBox(height: 15,),
          Text("Total: $total",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
        ],),
      ],
    )),
  );
  }

}