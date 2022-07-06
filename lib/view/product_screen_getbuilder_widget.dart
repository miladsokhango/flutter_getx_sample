import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/controller/product_getbuilder_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductScreenGetBuilder extends StatelessWidget{
  const ProductScreenGetBuilder({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 2, 164),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            GetBuilder<ProductGetbuilderController>(
              init:  ProductGetbuilderController(),
              builder: (ProductGetbuilderController productController){
               return Column(
                children: [
                  Text("product name : ${productController.productModel.name}", style: const TextStyle(fontSize: 20),),
                   Text("product price : ${productController.productModel.price}", style: const TextStyle(fontSize: 20),),
                    Text("product off : ${productController.productModel.off}", style: const TextStyle(fontSize: 20),),
                ],
              );
            }),
               
            ElevatedButton(
              onPressed: ((){
                Get.find<ProductGetbuilderController>().setNewProduct();
              }) ,
            child: const Text("Press")),


            ElevatedButton(
              onPressed: ((){
                Get.delete<ProductGetbuilderController>();
              }) ,
            child: const Text("delete")),

            
            
            
            
          ],
        ),
      ),
    );
  }
  
}