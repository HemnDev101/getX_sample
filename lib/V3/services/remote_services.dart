import 'package:dio/dio.dart';
import 'package:getx_sample/V3/models/product.dart';

class RemoteServices {
  static Future<Product?> fetchProducts() async {
    final dio = Dio();
    var response = await dio.get(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybellin');

    if (response.statusCode == 200) {
      var jsonString = response.data;
      // return Product.fromJson(jsonString.map((val) => ));
    } else {
      //show error message
      return null;
    }
  }
}
