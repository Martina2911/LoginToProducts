import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:products/Model/TabBarModel.dart';
class TabBarServices {
  static Future<List<Products>> fetchId(id)async{
    List<Products> products = [];
    try{
      String apiKey="https://dummyjson.com/carts/user/$id";
      final response = await http.get(Uri.parse(apiKey));
      if (response.statusCode == 200) {
        final jsonRes = jsonDecode(response.body); //json to map
        print(jsonRes);
        final productRes = TabBarModel.fromJson(jsonRes); // ba5od mn map a7wlo l list w a7oto f list 3ndi

        if (productRes.carts!.isNotEmpty) {
          products = productRes.carts![0].products!;
          return products;
          // altlt stor dol zado 3shan ana 3ndi 3 classes f ana msh harg3 data mn no3 cart akid
          // harg3ha mn no3 product f hat check an al data ali rag3a mn product.cart msh empty
          // 3shan arg3ha f harg3 list of products ali f carts[0]
        } else {
          return [];
        }
      }
    else{
        throw Exception('Failed to load data from the API');
      }
    }
    catch(e){
      throw Exception(e.toString());
    }
  }
}
