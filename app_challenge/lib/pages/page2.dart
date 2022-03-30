import 'package:app_challenge/pages/page1.dart';
import 'package:app_challenge/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Header2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details){
            if (details.delta.dx < 20) {
              Navigator.push(context, _crearRuta2() );
            }
          },
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 450,
                color: Colors.white,
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    HeaderWaveGradient(),
                    HeaderCurvo(),
                    InfoRanking(),
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: const [
                          PlayerCard('1', 'tonystark.jpg', 'Tony Stark', 17000),
                          PlayerCard('2', 'tonyhawk.jpg', 'Tony Hawk', 16500),
                          PlayerCard('3', 'freddurst.jpg', 'Fred Durst', 14450),
                          PlayerCard('4', 'freddurst.jpg', 'Hulk', 8100),
                          PlayerCard('5', 'tonystark.jpg', 'Cap America', 7000),
                          PlayerCard('6', 'tonyhawk.jpg', 'Falcon', 6500),
                          
                          
                        ],
                      ),
                    ),
                  ),
                ),
              SocialMenu(items: [
                SocialButton(icon: Icons.home, onPressed: () {}),
                SocialButton(icon: Icons.restore, onPressed: () {}),
                SocialButton(icon: Icons.person, onPressed: () {}),
                SocialButton(icon: Icons.bar_chart_sharp, onPressed: () {}),
                SocialButton(icon: Icons.notifications_none_outlined, onPressed: () {}, )
              ],)
            ],
          ),
        ),
      ),
    );
  }
}


class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeadedCurvoPainter(),
      ),
    );
  }
}

class _HeadedCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades
    lapiz.color = Color.fromARGB(255, 18, 10, 109);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * .65);
    path.quadraticBezierTo(
        size.width * .75, size.height * .88, size.width, size.height * .75);
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
      width:  double.infinity,
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
        LinearGradient(colors: <Color>[Color.fromARGB(255, 118, 0, 165), Color.fromARGB(255, 115, 0, 150)]);

    final lapiz = Paint()..shader = gradiente.createShader(rect);
    //propiedades
    lapiz.color = const Color(0xff615aab);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * .8);
    path.quadraticBezierTo(
        //pasando por                         //llegando a
        size.width * .25, size.height * .95, size.width * .55, size.height * .88);
    path.quadraticBezierTo(
        size.width *0.8, size.height * .84, size.width, size.height * .88);
    path.lineTo(size.width, size.height * .95);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


Route _crearRuta2() {


    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => MainPage(),
      transitionDuration: const Duration(milliseconds: 800),
      transitionsBuilder: ( context, animation, secondaryAnimation, child ) {

        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeOut );

        return SlideTransition(
          position: Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset.zero ).animate(curvedAnimation),
          child: child,
        );


      }
      );


  }