


import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:flutter_getx_sample/view/product_screen.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class MainScreen extends StatelessWidget{

  // var counteer = 0.obs;

  ProductController productController = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
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
                productController.productModel.update((val) {
                  val!.name ="chitooz namaki";
                  val!.price ="10000";
                  val!.off ="50%";
                });
              })

            ,
            child: const Text("Press")),
            
            
            ElevatedButton(
              onPressed: ((){
                Get.to(ProductScreen());
              })

            ,
            child: const Text("GO"))
          ],
        ),
      ),
    );
  }

}