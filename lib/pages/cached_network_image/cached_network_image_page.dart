import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/utils/image_cached.dart';
import 'package:get/get.dart';

import 'cached_network_image_controller.dart';

class CachedNetworkImagePage extends GetView<CachedNetworkImageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CachedImagePage')),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: ImageCached(
                  imageUrl:
                      '/assets/uploads/media-uploader/flutter-app-development-company1623499975.jpg',
                ),
              ),
              Expanded(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Hello world!',
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 500),
                    ),
                  ],
                  totalRepeatCount: 4,
                ),
              ),
              Expanded(
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'Fade First',
                      textStyle: const TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                    ),
                    ScaleAnimatedText(
                      'Then Scale',
                      textStyle: const TextStyle(
                          fontSize: 70.0, fontFamily: 'Canterbury'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
