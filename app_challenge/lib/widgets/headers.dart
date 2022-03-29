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
        size.width,       size.height * 0.91);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeadedWaveGradientPainter(),
      ),
    );
  }
}

class _HeadedWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(
      center: const Offset(165.0, 55.0),
      radius: 180,
    );
    const Gradient gradiente =
        LinearGradient(colors: <Color>[Colors.amber, Colors.cyan]);

    final lapiz = Paint()..shader = gradiente.createShader(rect);
    //propiedades
    lapiz.color = const Color(0xff615aab);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * .3);
    path.quadraticBezierTo(
        size.width * .25, size.height * .38, size.width * .5, size.height * .3);
    path.quadraticBezierTo(
        size.width * .75, size.height * .22, size.width, size.height * .3);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}