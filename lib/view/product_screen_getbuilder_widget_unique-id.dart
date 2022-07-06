import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/controller/product_getbuilder_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

import '../controller/product_getbuilder_unique_id_controller.dart';

class ProductScreenGetBuilderUniqueId extends StatelessWidget {
  const ProductScreenGetBuilderUniqueId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: ((() {
                Get.find<ProductGetbuilderUniqueIdController>().setNewProduct(index);
              })),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: GetBuilder<ProductGetbuilderUniqueIdController>(
                      id: index,
                      init: ProductGetbuilderUniqueIdController(),
                      builder:
                          (ProductGetbuilderUniqueIdController productController) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "product name : ${productController.productModel.name}",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              "product price : ${productController.productModel.price}",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              "product off : ${productController.productModel.off}",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
