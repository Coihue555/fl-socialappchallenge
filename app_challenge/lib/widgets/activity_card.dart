import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {

  final String actividad;
  final String imagePath;

  const ActivityCard(this.actividad, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return JelloIn(
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 120,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 5), 
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 30,
              top: 30,
              child: Image(
                alignment: Alignment.bottomRight,
                height: 100,
                image: AssetImage('assets/$imagePath',
                 )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 15),
              alignment: Alignment.topLeft,
              child: Text(actividad, style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey))),
            
          ],
        ),
      ),
    );
  }
}