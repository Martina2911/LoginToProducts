import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Model/ProductModel.dart';

class ProductServices {
  String apiKey="https://dummyjson.com/products";
  fetchProducts() async {
    try{
      final response = await http.get(Uri.parse(apiKey));
      print(response.body);
      if (response.statusCode == 200) {
        final jsonRes = jsonDecode(response.body); //response to json
        final productRes = ProductModel.fromJson(jsonRes); // ba5od mn json a7wlo l list w a7oto f list 3ndi
        print(productRes.products);
        return productRes.products;
      }
      else{
        throw Exception("error");
      }
    }
    catch(e){
      print(e);
    }
  }
}