import 'package:flutter/material.dart';

class HilighText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextOverflow textOverflow;

  const HilighText({
    super.key,
    this.color = const Color(0xff000000),
    required this.text,
    this.size = 25,
    this.textOverflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double adjustedSize = size * (screenWidth / 360);
    return Text(
      text,
      maxLines: 1,
      overflow: textOverflow,
      style: TextStyle(
        fontFamily: "Amiry",
        color: color,
        fontSize: adjustedSize,
      ),
    );
  }
}
