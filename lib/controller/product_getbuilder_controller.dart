

import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductGetbuilderController extends GetxController{
  ProductModel productModel=ProductModel(name:"نوشابه", off:"50",price:"500");


  setNewProduct(){

    productModel = ProductModel(name: "نوشمک", price: "10000", off: "20");
    print(productModel.name);
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("oninit");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("onRedy");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("onClose");
  }

  
}