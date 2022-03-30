import 'package:flutter/material.dart';

class SelectWinners extends StatelessWidget {
  const SelectWinners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text('Winners ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),),
        Text('Friends ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),),
        Spacer(),
        Icon(Icons.person_add_alt_rounded, color: Colors.white, size: 35,),
        Icon(Icons.search, color: Colors.white, size: 35,)
      ],
    );
  }
}