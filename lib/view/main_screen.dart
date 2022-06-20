

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget{

  var counteer = 0.obs;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(((){
              return Text("Counter : $counteer", style: TextStyle(fontSize: 30),);
            })
              
            ),
               
            ElevatedButton(
              onPressed: ((){
                counteer=counteer+1;
              })

            ,
            child: Text("Press"))
          ],
        ),
      ),
    );
  }

}