import 'package:flutter/material.dart';
class HeaderWaveGradient2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeadedWaveGradientPainter2(),
      ),
    );
  }
}

class _HeadedWaveGradientPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(
      center: const Offset(165.0, 55.0),
      radius: 100,
    );
    const Gradient gradiente =
        LinearGradient(colors: <Color>[Colors.amber, Color.fromARGB(255, 173, 128, 3)]);

    final lapiz = Paint()..shader = gradiente.createShader(rect);
    //propiedades
    lapiz.color = const Color(0xff615aab);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();

    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * .5, size.height * .4, size.width * .5, size.height * .68);
     path.quadraticBezierTo(
         size.width * .3, size.height * .5, 0, size.height * 0.6);
    //path.lineTo(0, size.height * 0.3);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}