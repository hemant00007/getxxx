import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Apppages.dart';
import 'Routes.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.FIrst,
      getPages: AppPages.list,
    );
  }

}
