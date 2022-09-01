import 'package:get/get.dart';

class main_controller extends GetxController {
  var count = 0;
  var count2 = 0.obs;

  increasefunc() {
    count++;
    refresh();
    print(count);
  }
}
