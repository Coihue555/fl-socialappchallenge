
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                color: Colors.white,
                child: StackHeader(),
              ),
          
              Column(
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
                      ActivityCard('Walking', 'walk.png'),
                      ActivityCard('Cycling', 'cycling.png'),
                      
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const[
                      ActivityCard('Walking', 'walk.png'),
                      ActivityCard('Cycling', 'cycling.png'),
                      
                    ],
                  ),
                  
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                color: Colors.white,
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.home, size: 40, color: Colors.black54,),
                    Icon(Icons.restore, size: 40, color: Colors.black54,),
                    Icon(Icons.person, size: 40, color: Colors.black54,),
                    Icon(Icons.bar_chart_sharp, color: Colors.red, size: 40,),
                    Icon(Icons.notifications_none_outlined, size: 40, color: Colors.black54,),
                  ],
                ),
          
              )
            ],
          ),
        ),
      ),
    );
  }
}

