import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/components/loading_toast.dart';
import 'package:flutter_getx_ithome/components/text_toast.dart';
import 'package:flutter_getx_ithome/pages/toast/toast_controller.dart';
import 'package:get/get.dart';

class ToastPage extends GetView<ToastController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToastPage')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CupertinoButton(
                child: const Text("TextToast"),
                onPressed: () {
                  TextToast.show("TextToast");
                }),
            CupertinoButton(
                child: const Text("Loading OverLay"),
                onPressed: () {
                  LoadingToast().show();
                }),
            CupertinoButton(
                child: const Text("Loading OverLay with text"),
                onPressed: () {
                  LoadingToast().show(message: "with text");
                }),
          ],
        ),
      ),
    );
  }
}
