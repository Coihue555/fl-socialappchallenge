
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.white,
              child: StackHeader(),
            ),
        
            Expanded(
              child: SingleChildScrollView(
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
            BottomMenu()
          ],
        ),
      ),
    );
  }
}



