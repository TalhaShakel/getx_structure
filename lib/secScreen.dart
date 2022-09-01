import 'package:flutter/material.dart';
import 'package:flutter_getx_structure/main_controller.dart';
import 'package:get/get.dart';

class sec extends StatelessWidget {
  sec({Key? key}) : super(key: key);
  var controller = Get.find<main_controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<main_controller>(builder: (controller) {
            return Column(
              children: [
                Text("Your value Was ${controller.count}"),
                Text("Your value Was ${controller.count2}"),
                ElevatedButton(
                    onPressed: () {
                      // controller.increasefunc();
                      controller.count2++;
                      controller.update();
                    },
                    child: Text(" Increament")),
                ElevatedButton(
                    onPressed: () {
                      // controller.increasefunc();
                      controller.count--;
                      controller.update();
                    },
                    child: Text("decrement"))
              ],
            );
          }),
        ],
      ),
    );
  }
}
