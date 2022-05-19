import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'firstcontroller.dart';

class First extends StatelessWidget{

  final consts = Get.put(Firstcontroller());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

           Container(
             width: double.infinity,
             height: double.infinity,
             color: Colors.red,
             child: GetBuilder<Firstcontroller>(
               builder: (consts) =>

               //     ListView.builder(
               //   itemCount: controller.categoryproductli.length,
               //   itemBuilder: (context , index){
               //     return Text(controller.categoryproductli[index].name!);
               //   },
               //
               // ),
               DropdownButtonHideUnderline(
             child: ButtonTheme(

             child:

             DropdownButton<String>(

                 style: TextStyle(
                   color: Colors.black54,
                   fontSize: 16,
                 ),
                 hint: Text('select'),

                 value: consts.selectedDrowpdown.value.toString(),
                 onChanged: (String? newValue) {

                   consts.selectedDrowpdown.value = newValue!.toString();
                   consts.update();

                   print(newValue);
                 },

                 items: consts.categoryproductli.map((item) {
                   return new DropdownMenuItem<String>(
                     child: new Text(item.name.toString()),
                     value: item.id,
                     // value: item['id'].toString(),
                   );
                 }).toList()

             ),

           ),
    ),

             )


        //    )


       )







    );
  }
}