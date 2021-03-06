import 'package:flutter/material.dart';


class HeaderWave extends StatelessWidget {
  final Color color;

  const HeaderWave({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeadedWavePainter(color),
      ),
    );
  }
}

class _HeadedWavePainter extends CustomPainter {
  final Color color;

  _HeadedWavePainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades
    lapiz.color = color;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();

    //point 1
    path.lineTo(0, size.height * .85);
    //max1
    path.quadraticBezierTo(
        size.width * .25, size.height * .65,
        size.width * .60,  size.height * .9);
    //inflex1
    path.quadraticBezierTo(
        size.width * .80, size.height * 1.05,
        size.width*.96,       size.height * 0.93);
    
    path.quadraticBezierTo(
        size.width * .750, size.height * 0.9,
        size.width*0.5,       size.height * 0.66);

    path.quadraticBezierTo(
        size.width * .250, size.height * 0.4,
        0,       size.height * 0.45);

    path.lineTo(0, size.height*0.4);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
