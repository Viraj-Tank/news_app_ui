import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({Key? key, required this.bgColor, required this.children})
      : super(key: key);

  final Color bgColor;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
