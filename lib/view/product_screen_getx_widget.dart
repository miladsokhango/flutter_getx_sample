import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductScreenGetx extends StatelessWidget{
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            GetX(
              autoRemove: true,
              dispose: ((State){
                State.dispose();
              }),
              init: ProductController(),
              builder: (ProductController productController){
               return Column(
                children: [
                  Text("product name : ${productController.productModel.value.name}", style: const TextStyle(fontSize: 20),),
                   Text("product price : ${productController.productModel.value.price}", style: const TextStyle(fontSize: 20),),
                    Text("product off : ${productController.productModel.value.off}", style: const TextStyle(fontSize: 20),),
                ],
              );
            }),
               
            ElevatedButton(
              onPressed: ((){
                Get.find<ProductController>().productModel.update((val) {
                  val!.name="شیر کاکائو";
                  val.price="99555";
                  val.off="20";
                });
              })

            ,
            child: const Text("Press")),

            
            
            
            
          ],
        ),
      ),
    );
  }
  
}