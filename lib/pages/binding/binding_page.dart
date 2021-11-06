import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/pages/binding/binding_controller.dart';
import 'package:get/get.dart';

class BindingPage extends GetView<BindingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Binding Page')),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Obx(() => Center(child: Text('${controller.someString}'))),
              Obx(() => Center(child: Text('${controller.someInt}'))),
              Obx(() => Center(child: Text('${controller.someBool}'))),
              Obx(
                () {
                  return Expanded(
                    flex: 1,
                    child: ListView(
                      children: List.generate(controller.someBasicList.length,
                          (index) {
                        final title = controller.someBasicList[index];
                        return Center(child: Text(title));
                      }),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                  color: Colors.blue,
                  child: Text("someString changed"),
                  onPressed: () {
                    if (controller.someString.isEmpty) {
                      controller.someString = "someString changed";
                    } else {
                      controller.someString = "";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                  color: Colors.blue,
                  child: Text("someInt changed"),
                  onPressed: () {
                    if (controller.someInt == 0) {
                      controller.someInt = 99;
                    } else {
                      controller.someInt = 0;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                  color: Colors.blue,
                  child: Text("someBool changed"),
                  onPressed: () => controller.someBool = !controller.someBool,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                  color: Colors.blue,
                  child: Text("someBasicList changed"),
                  onPressed: () {
                    controller.addBasicList();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
