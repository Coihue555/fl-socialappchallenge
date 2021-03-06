
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:app_challenge/widgets/widgets.dart';


class StackHeader extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
       
        HeaderWaveGradient1(),
        HeaderWaveGradient3(),
        HeaderWaveGradient2(),
        HeaderWave(color: Color.fromARGB(255, 240, 76, 98)),
        
        Positioned(
          bottom: 10,
          left: 20,
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeIn(child: const Text('Good', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold))),
                      FadeIn(
                        duration: Duration(milliseconds: 1000),
                        child: FlipInX(child: const Text('Sanwik Pachino', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold)))),
                      const SizedBox(height: 60,),
                      Text('Start a new journey', style: TextStyle(color: Colors.grey.shade800, fontSize: 22, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Container(width: 80,),
                  Column(
                    children: [
                      SlideInRight(
                        duration: Duration(milliseconds: 1000),
                        from: 10,
                        child: Icon(Icons.cloud, size: 50, color: Colors.white,)),
                      SlideInRight(
                        from: 10,
                        child: Text('21 C', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold))),
                      SlideInLeft(
                        from: 8,
                        child: SlideInUp(
                          duration: Duration(milliseconds: 1000),
                          from:10,
                          child: Text('Cloudy', style: TextStyle(color: Colors.white, fontSize: 22))),
                      ),
                      Container(width: 80, height: 20,),
                    ],
                  )
                ],
              ),
            ],
          ),
        )

    ],);
  }
}