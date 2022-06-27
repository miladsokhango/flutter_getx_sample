import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget{
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.amber,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(((){
              return Column(
                children: [
                  Text("product name : ${productController.productModel.value.name}", style: const TextStyle(fontSize: 20),),
                   Text("product price : ${productController.productModel.value.price}", style: const TextStyle(fontSize: 20),),
                    Text("product off : ${productController.productModel.value.off}", style: const TextStyle(fontSize: 20),),
                ],
              );
            })
              
            ),
               
            ElevatedButton(
              onPressed: ((){
                
              })

            ,
            child: const Text("Press")),

            
            
            
            ElevatedButton(
              onPressed: ((){
                Get.back();
              })

            ,
            child: const Text("back"))
          ],
        ),
      ),
    );
  }
  
}