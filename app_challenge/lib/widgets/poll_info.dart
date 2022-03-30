import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class PollInfo extends StatelessWidget {
  final String imgPath;
  final String name;
  final String points;
  final bool gold;

  const PollInfo(this.imgPath, this.name, this.points, this.gold);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    blurRadius: 25,
                    color: Color.fromARGB(255, 55, 58, 196),
                    spreadRadius: -10
                  )
                ]
              ),
              child: FadeIn(
                child: ZoomIn(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: (gold) ? 51 : 41,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: (gold) ? 48 : 38,
                        foregroundImage: AssetImage('assets/$imgPath'),
                      ),
                    ],
                  ),
                ),
              )
            ),
          ),
          FadeIn(
            child: ZoomIn(
              child: Column(
                children: [
                  (gold)
                  ? Image(width: 30, height: 30, fit: BoxFit.cover, image: AssetImage('assets/gold.png'),)
                  : Image(width: 30, height: 30, fit: BoxFit.cover, image: AssetImage('assets/plata.png'),),
            
                  Text(name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(points+'Pts', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          )
          
        ],
      ),
    );
  }
}