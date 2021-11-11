import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/components/shimmer_widget.dart';
import 'package:get/get.dart';

import 'news_controller.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Page')),
      body: SafeArea(
        child: Obx(
          () => AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            switchInCurve: Curves.easeIn,
            child: (controller.isLoading)
                ? ListViewShimmer(key: const ValueKey<int>(0))
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
      ),
    );
  }
}
