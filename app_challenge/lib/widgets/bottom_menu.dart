import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
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
        
    );
  }
}