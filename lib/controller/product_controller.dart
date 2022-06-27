

import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  Rx<ProductModel> productModel=ProductModel(name:"نوشابه", off:"50",price:"500").obs;



}