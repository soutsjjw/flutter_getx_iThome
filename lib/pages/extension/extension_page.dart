import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/pages/extension/extension_controller.dart';
import 'package:get/get.dart';

class ExtensionPage extends GetView<ExtensionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Extension Page')),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "translation_service".tr,
                  style: const TextStyle(fontSize: 22),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      const Text("Translation"),
                      Card(
                        child: ListTile(
                          title: const Text("en_us"),
                          onTap: () => controller.updateTransition(
                            const Locale('en', 'US'),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text("zh_CN"),
                          onTap: () => controller.updateTransition(
                            const Locale('zh', 'CN'),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text("zh_TW"),
                          onTap: () => controller.updateTransition(
                            const Locale('zh', 'TW'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text("Getx Snackbar"),
                      Card(
                        child: ListTile(
                          title: const Text("Snackbar show"),
                          onTap: () => Get.snackbar(
                              "Get.snackbar", "Get.nackbar Message"),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text("Screen Info"),
                      Card(
                        child: ListTile(
                            title: Text(
                                "height: ${Get.height.toInt()}, width ${Get.width.toInt()}")),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
