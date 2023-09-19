import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:products/screens/product_screen/product_screen.dart';
class LoginServices{
  final apiKey="https://dummyjson.com/auth/login";
  login(BuildContext context ,username,password)async{
    try{
      final headers = {"Content-Type": "application/json"};
      final body = {"username":username, "password":password, };
        // "username": "kminchelle", // "password": "0lelplR",
    final response=await http.post(Uri.parse(apiKey),body: jsonEncode(body),headers: headers);
    if(response.statusCode==200){
      Get.to(ProductScreen());
    }
    else
      {
return showModalBottomSheet(context:context,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
    ), builder: (context) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Login Error',
            style: TextStyle(color: Colors.blueGrey, fontSize: 18, fontWeight: FontWeight.w500)),
            SizedBox(height: 14.0),
            Text('${response.body}',style: TextStyle(color: Colors.blueGrey, fontSize: 14, fontWeight: FontWeight.w500)),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {

                Navigator.pop(context); // Dismiss the bottom sheet
              },
              style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey)) ,
              child: Text('OK'),
            ),
          ],
        ),
      );
    });
      }
  }
  catch(e){
      print(e);
  }
  }
}