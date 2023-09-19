import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products/screens/product_screen/controller/controller.dart';

class DetailPage extends StatelessWidget{
  final index;

  const DetailPage({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(ProductController());
  return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Obx(()=>
          Image.network(controller.prod[index].images!.first, height: 100, width: 100,fit: BoxFit.cover,),
      //controller.prod[index].images!.first
      )
    ),
  );
  }
}
