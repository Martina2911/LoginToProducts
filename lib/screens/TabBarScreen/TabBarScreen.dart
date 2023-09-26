import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products/components/customCont.dart';
import 'controller/TabBarController.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabBarController());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs:
            [
              Tab(text: 15.toString(),),
              Tab(text: 22.toString(),),
            ],
            onTap: (index) => controller.changeTab(index),
           ),
          title: const Text("Products 2"),backgroundColor: Colors.blueGrey,
           ),
          body:
          TabBarView(
           children: [
             Obx(() => !controller.isLoading.value ? (controller.products.isNotEmpty ?
             ListView.builder(
               itemCount: controller.products.length,
               itemBuilder: (context, index) {
                 return customCont(
                   title: controller.products[index].title,
                   price: controller.products[index].price.toString(),
                   quant: controller.products[index].quantity,
                   total: controller.products[index].total,
                 );
               },
             )
                 :  Center(

                 child:
                 Container(
                     width: 100,
                     height: 70,
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
                    child: Center(child: Text("Empty",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)))))
                 : Center(child: CircularProgressIndicator()),
             ),
             //dlw2ty alloading alawl b false , lma andh 3la al controller.isloading w 2l2ih b true yb2a kda bd2 y fetch al function
             //f ! true b false yb2a kda hi3ml al circularprogress
             // lma tb2a b false b2a yb2a 5ls fetching lldata  ! false b true f kda habd2 as2l aldata msh fadia ? lw ah bktb Empty ,
             // lw la brg3 listview w akml 3ady
             Obx(() => !controller.isLoading.value ? (controller.products.isNotEmpty ?
             ListView.builder(
               itemCount: controller.products.length,
               itemBuilder: (context, index) {
                 return customCont(
                   title: controller.products[index].title,
                   price: controller.products[index].price.toString(),
                   quant: controller.products[index].quantity,
                   total: controller.products[index].total,
                 );
               },
             )
                 : Center( child:
             Container(
                 width: 100,
                 height: 70,
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
                 Center(child: Text("Empty",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)))))
                 :  Center(child: CircularProgressIndicator()),
             ),
          ],
        ),
      ),
    );
  }
}

