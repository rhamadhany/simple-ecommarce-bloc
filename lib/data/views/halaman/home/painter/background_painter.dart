import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  final Color color;

  BackgroundPainter({super.repaint, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..color = const Color.fromARGB(255, 255, 237, 237)
      ..style = PaintingStyle.fill;

    final path1 = Path();
    path1.moveTo(0, 0);

    path1.lineTo(size.width, 0);
    path1.lineTo(0, size.height * 0.25);

    path1.moveTo(0, size.height);
    path1.lineTo(size.width, size.height);
    path1.lineTo(size.width, size.height * 0.95);

    path1.lineTo(0, size.height * 0.65);

    canvas.drawPath(path1, paint1);

    path1.moveTo(0, size.height * 0.45);
    path1.lineTo(size.width, size.height * 0.25);

    path1.lineTo(size.width, size.height * 0.75);
    path1.lineTo(0, size.height * 0.45);
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(BackgroundPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(BackgroundPainter oldDelegate) => false;
}
