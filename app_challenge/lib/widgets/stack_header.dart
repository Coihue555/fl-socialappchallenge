import 'package:app_challenge/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class StackHeader extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
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
                      const Text('Good', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                      const Text('Sanwik Pachino', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 60,),
                      Text('Start a new journey', style: TextStyle(color: Colors.grey.shade800, fontSize: 22, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Container(width: 80,),
                  Column(
                    children: [
                      SlideInRight(
                        from: 8,
                        child: Icon(Icons.cloud, size: 50, color: Colors.white,)),
                      SlideInRight(
                        from: 10,
                        child: Text('21 C', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold))),
                      SlideInLeft(
                        from: 8,
                        child: SlideInUp(
                          from:8,
                          child: Text('Cloudy', style: TextStyle(color: Colors.white, fontSize: 22))),
                      ),
                      Container(width: 80, height: 70,),
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