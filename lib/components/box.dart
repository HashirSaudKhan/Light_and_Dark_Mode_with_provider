import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final Color? color;
  final Widget? child;

  const MyBox({super.key, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
    );
  }
}
