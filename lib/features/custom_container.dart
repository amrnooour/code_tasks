import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final void Function()? onTap;
  const CustomContainer({super.key, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: color),
      ),
    );
  }
}
