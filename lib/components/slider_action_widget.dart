import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SliderActionWidget extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final IconData iconData;
  final VoidCallback didSelected;

  const SliderActionWidget(
      {Key? key,
      required this.text,
      required this.backgroundColor,
      required this.iconData,
      required this.didSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: IconSlideAction(
        caption: text,
        color: backgroundColor,
        icon: iconData,
        onTap: () => didSelected(),
      ),
    );
  }
}
