import 'package:app_challenge/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_challenge/pages/page2.dart';
import '../widgets/widgets.dart';


class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      GestureDetector(
        onHorizontalDragUpdate: (details){
          if (details.delta.dx < 0) {
            Navigator.push(context, _crearRuta() );
          }
        },
        child: SafeArea(
          
          child: Column(
            children: [
              Container(
                height: 300,
                color: Colors.white,
                child: StackHeader(),
              ),
          
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const[
                          ActivityCard('Walking', 'walk.png'),
                          ActivityCard('Cycling', 'cycling.png'),
                          
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const[
                          ActivityCard('Driving', 'car.png'),
                          ActivityCard('Train', 'train.png'),
                          
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const[
                          ActivityCard('Hicking', 'hicking.png'),
                          ActivityCard('Flight', 'flight.png'),
                          
                        ],
                      ),
                      
                    ],
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



Route _crearRuta() {


    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => Header2(),
      transitionDuration: const Duration(milliseconds: 800),
      transitionsBuilder: ( context, animation, secondaryAnimation, child ) {

        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeOut );

        return SlideTransition(
          position: Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero ).animate(curvedAnimation),
          child: child,
        );


      }
      );


  }
