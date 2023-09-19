import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customCard extends StatelessWidget{
  final String image;
  final String name;
  final String price;

  const customCard({super.key,required this.image,required this.name,required this.price});
  @override
  Widget build(BuildContext context) {
   return Container(
       width: 250,
       height: 300,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(12.0),
         border: Border.all(color: Colors.blueGrey,width: 3.0),
         color: Colors.white54,
         boxShadow: [
         BoxShadow(
         color: Colors.grey.withOpacity(0.5), // Set the shadow color
         spreadRadius: 1, // Control the spread of the shadow
         blurRadius: 5, // Control the blur of the shadow
          offset: Offset(0, 2), // Control the position of the shadow
   ),
         ],
       ),
       child:Column( mainAxisAlignment: MainAxisAlignment.center,
           children:
       [Image.network(image.toString(), height: 100, width: 100,fit: BoxFit.cover,),
       SizedBox(height: 10,),
       Center(child:Padding(padding: EdgeInsets.all(10),child:Text(name,textAlign:TextAlign.center,),),),
       SizedBox(height: 10,),
       Text(price),
    ]),
   );
  }

}