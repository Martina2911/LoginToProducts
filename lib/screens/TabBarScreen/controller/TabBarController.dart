import 'package:get/get.dart';
import '../../../Model/TabBarModel.dart';
import '../../../services/TabBar_services.dart';

class TabBarController extends GetxController{
  var selectedIndex = 15.obs;
  RxBool isLoading=false.obs;

    void changeTab(int index) {
    if(index==0) {
      selectedIndex.value = 15;
    }
    else {
      selectedIndex.value = 22;
    }
    fetchIdCart(selectedIndex.value);
  }

  //on change tap / on pressed >>>> lazm ab3t al function ali ana 3mlaha hna flcontroller

  final products=<Products>[].obs;
  fetchIdCart(id)async{
    isLoading.value=true;
    products.value= (await TabBarServices.fetchId(selectedIndex.value))!;
    isLoading.value=false;
  }

  @override
  onInit() async {
    super.onInit();
    (await fetchIdCart(selectedIndex.value));
  }
}