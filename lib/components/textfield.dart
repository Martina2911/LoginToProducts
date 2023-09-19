import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customTextfield extends StatelessWidget {
  final labelText;
  final bool obs;
  final TextEditingController TextEdit;
  const customTextfield({
    super.key,this.labelText,required this.obs, required this.TextEdit
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:374,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.blueGrey,
          width: 2.0,
        )
      ),
      child:
      TextField(
        controller:TextEdit,
        obscureText:obs ,
        decoration: InputDecoration(
          labelText:labelText,
          labelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.blueGrey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blueGrey,width: 3.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color:Colors.blueGrey,width: 2.0), // Set the color of the focused border
          ),
        ),
      ),);
  }
}