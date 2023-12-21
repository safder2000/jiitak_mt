import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.margin,
    this.borderRadius = 10,
    this.padding,
  });

  final double? width;
  final double? height;
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: Color.fromARGB(0, 255, 255, 255),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(50, 215, 215,
                215), // Adjust the alpha value for a lighter shadow
            blurRadius: 5.0,
            spreadRadius: 2.0, // Adjust the spread radius for a lighter shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
