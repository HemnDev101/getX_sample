import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_sample/V3/models/product.dart';
import 'package:getx_sample/V3/services/remote_services.dart';

class ProductController extends GetxController {
  // List<Product> productList = <Product>[].obs;
  RxList<Product> productList = (List<Product>.of([])).obs;

  @override
  void onInit() {
    fetchProducts(); 
    super.onInit();
  }

  void fetchProducts() async {
    try {
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        // productList.value = products;
      }
    } finally {
      print('loaded');
    }
  }
}
