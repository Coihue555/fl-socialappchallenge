
import 'package:flutter/material.dart';
class HeaderWaveGradient3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeadedWaveGradientPainter3(),
      ),
    );
  }
}

class _HeadedWaveGradientPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(
      center: const Offset(305.0, 5.0),
      radius: 180,
    );
    const Gradient gradiente =
        LinearGradient(colors: <Color>[Color.fromARGB(255, 240, 76, 98), Color.fromARGB(255, 231, 104, 214)]);

    final lapiz = Paint()..shader = gradiente.createShader(rect);
    //propiedades
    lapiz.color = const Color(0xff615aab);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();

    //point 1
    path.moveTo(0, size.height * 0.4);
    //max1
    path.quadraticBezierTo(
        size.width * .25, size.height * .65,
        size.width * .60,  size.height * .9);
    //inflex1
    path.quadraticBezierTo(
        size.width * .80, size.height * 1.05,
        size.width,       size.height * 0.5);
    path.lineTo(size.width, 0);

    path.quadraticBezierTo(
    size.width * .8, size.height * 0.7,
    size.width*.1,       size.height * 0.5);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


