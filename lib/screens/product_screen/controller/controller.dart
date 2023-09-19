import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:products/services/product_services.dart';

import '../../../Model/ProductModel.dart';

class ProductController extends GetxController{
 final prod=<Products>[].obs;
 ProductServices services=ProductServices();

 fetchPr()async{
  prod.value= (await services.fetchProducts())!;
 }

 @override
 onInit()  async {
  super.onInit();
  await fetchPr();
 }


}