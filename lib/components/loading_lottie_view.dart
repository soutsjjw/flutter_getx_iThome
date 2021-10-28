import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoadingLottieView extends StatelessWidget {
  const LoadingLottieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.2,
      width: Get.height * 0.2,
      child: Transform.scale(
        scale: 1.3,
        child: Lottie.asset(
          'assets/lottie/trail_loading.json',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
