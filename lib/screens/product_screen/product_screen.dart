/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products/screens/product_screen/controller/controller.dart';
import '../../components/customCard.dart';

class ProductScreen extends StatelessWidget{
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController con = Get.put(ProductController());
    return Scaffold(
    appBar:AppBar(title:Text("Products",style: TextStyle(color:Colors.brown,fontSize: 30,fontWeight: FontWeight.w500),),
    backgroundColor: Colors.white,),
    body:
    Obx*/
    /*(() =>
          GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .6,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: con.prod.length,
          itemBuilder: (BuildContext context, int index) {
            return customCard(
              image:con.prod[index].images!.first.toString(),
              name: con.prod[index].title??"",
              price:con.prod[index].price??"",
              //  image:"",
              //  name: "Iphone",
              //  price:"5",
            );},

     )),
    );
  }

}

*/
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products/screens/DetailPage/DetailScreen.dart';
import 'package:products/screens/product_screen/controller/controller.dart';
import '../../components/customCard.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController con = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Products",style: TextStyle(color: Colors.blueGrey, fontSize: 25, fontWeight: FontWeight.w500),),
        backgroundColor: Colors.white,
      ),
      body: Obx(
            () => GridView.builder(
              shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .8,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: con.prod.length,
          itemBuilder: (context, index) {
            return GestureDetector(
            onTap: (){
              Get.to(DetailPage(index: index,));
            },
            child:
              customCard(image: con.prod[index].images!.first.toString(),
                name: 'Product ${index+1}: ${con.prod[index].title}',
                price: 'Price: ${con.prod[index].price}',));

            // return Card(
            //   child: Column(
            //     children: [
            //       Image.network(
            //         con.prod[index].images!.first.toString(),
            //         height: 100,
            //       ),
            //       Text('Title: ${con.prod[index].title}'),
            //       Text('Price: ${con.prod[index].price}'),
            //       // Add more widgets to display other product information
            //     ],
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
