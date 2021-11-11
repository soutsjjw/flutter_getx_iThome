import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'news_controller.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Page')),
      body: SafeArea(
        child: Obx(
          () => (controller.isLoading)
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.dataList.length,
                  itemBuilder: (_, index) {
                    final title = controller.dataList[index].title;
                    final content = controller.dataList[index].content;

                    return Card(
                      child: ListTile(
                        title: Text(title),
                        subtitle: Text(content),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
