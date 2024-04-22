import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final void Function()? onTap;

  const MyButton({super.key, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        width: 100,
        height: 100,
        child: const Center(
            child: Text(
          "TAP",
        )),
      ),
    );
  }
}
