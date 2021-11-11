import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  late ShapeBorder shapeBorder;
  final double borderRadius;

  ShimmerWidget.rectangle({
    Key? key,
    this.width = double.infinity,
    required this.height,
    this.borderRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    shapeBorder = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius));

    return Shimmer.fromColors(
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: Colors.grey[400]!,
          shape: shapeBorder,
        ),
      ),
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[200]!,
    );
  }
}

class ListViewShimmer extends StatelessWidget {
  final int cellCount;
  final cellWidth = Get.width * 0.95;

  ListViewShimmer({Key? key, this.cellCount = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: cellCount,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: ShimmerWidget.rectangle(height: 15),
                subtitle: ShimmerWidget.rectangle(height: 10),
              ),
            );
          },
        ),
      ],
    );
  }
}

