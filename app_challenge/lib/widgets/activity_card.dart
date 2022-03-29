import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {

  final String actividad;
  final String imagePath;

  const ActivityCard(this.actividad, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
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
      child: Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(actividad, style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey))),
          Image(
            height: 90,
            image: AssetImage('assets/$imagePath',
             )
          )
        ],
      ),
    );
  }
}