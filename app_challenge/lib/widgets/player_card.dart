import 'package:flutter/material.dart';

class PlayerCard extends StatelessWidget {
  final String index;
  final String imgPath;
  final String nombreJugador;
  final int puntaje;
  

  const PlayerCard(this.index, this.imgPath, this.nombreJugador, this.puntaje, );
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    

    return Container(
      width: size.width,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(index, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 49, 16, 105)),),
          Image(
            width: 40,
            height: 40,
            image: AssetImage('assets/$imgPath'), fit: BoxFit.cover,),
          Text(nombreJugador, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 49, 16, 105))),
          Spacer(),
          Text(puntaje.toString()+'Pts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 49, 16, 105))),
          ]
        

      ),
    );
  }
}
