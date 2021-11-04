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
            children: const [
              Expanded(
                child: ImageCached(
                  imageUrl:
                      '/assets/uploads/media-uploader/flutter-app-development-company1623499975.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
