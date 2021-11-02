import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/components/slider_action_widget.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import 'first_page_controller.dart';

class FirstPagePage extends GetView<FirstPageController> {
  final controller = Get.put(FirstPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FirstPage')),
      body: SafeArea(
        child: Container(
          color: Colors.grey[50],
          child: _buildListView(),
        ),
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.dataList.length,
      itemBuilder: (BuildContext context, int index) {
        final title = controller.dataList[index];
        return _slidableCell(title);
      },
    );
  }

  Widget _slidableCell(String title) {
    return Slidable(
      actionPane: const SlidableStrechActionPane(),
      secondaryActions: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: SliderActionWidget(
            text: "選項1",
            backgroundColor: Colors.lightBlue[300],
            iconData: Icons.drive_file_move_outline,
            didSelected: () async {
              print("點擊了 $title 選項1");
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: SliderActionWidget(
            text: "選項2",
            backgroundColor: Colors.orange[300],
            iconData: Icons.delete_forever,
            didSelected: () async {
              print("點擊了 $title 選項2");
            },
          ),
        ),
      ],
      child: Card(
        elevation: 3.0,
        child: ListTile(
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => Get.toNamed("/$title"),
        ),
      ),
    );
  }
}
