import 'package:flutter/material.dart';

class TimeRangeMenu extends StatefulWidget {


  @override
  State<TimeRangeMenu> createState() => _TimeRangeMenuState();
}

class _TimeRangeMenuState extends State<TimeRangeMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 380,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 100,
            child: Text('Today', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              
            ),

          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 100,
            child: Text('Month', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              
            ),

          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 100,
            child: Text('All time', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
              
            ),

          )
        ],
      ),
    );
  }
}

class _MenuModel extends ChangeNotifier{
  int _itemSeleccionado = 0;
  Color activeColor     = Colors.white;
  Color inactiveColor   = Colors.deepPurple;
  
  int get itemSeleccionado => _itemSeleccionado;
  set itemSeleccionado( int index ){
    _itemSeleccionado = index;
    notifyListeners();
  }
}