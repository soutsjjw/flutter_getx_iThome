import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/components/loading_lottie_view.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'lottie_controller.dart';

class LottiePage extends GetView<LottieController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lottie Page')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                color: Colors.blue[100],
                child: LoadingLottieView(),
              ),
            ),
            Lottie.network(
              "https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json",
              controller: controller.animationController,
            ),
          ],
        ),
      ),
    );
  }
}
