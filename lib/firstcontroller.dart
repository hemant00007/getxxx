import 'package:get/get.dart';
import 'package:getxxx/remote.dart';
import 'package:getxxx/secondpage.dart';

import 'datamodel.dart';

class Firstcontroller extends GetxController{

  var selectedDrowpdown = 'abc'.obs;
  // List <Data> categoryproductlist =[].obs as List<Data>;

  // var categoryproductli = <Data>[].obs;
  List<Data> categoryproductli = [];

  @override
  void onInit() {
   super.onInit();
  productCategory();
  }


  void gotonext(){
    Get.off(Secondpage());

  }

  Future<category?> productCategory() async {
    var categoryresult = await RemoteService.productCategory();
    if(categoryresult?.status==true){
      if(categoryresult!=null){

        categoryproductli=categoryresult.data!.toList() ;
        update();

        return categoryresult;

      }
    }else if(categoryresult?.status==false){

      return categoryresult;
    }
  }

}