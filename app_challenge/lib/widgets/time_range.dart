import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimeRangeButton{
  final String period;

  TimeRangeButton({ 
    
    required this.period});

}


class TimeRangeMenu extends StatelessWidget {

  final bool mostrar;
  final Color backgroundColor;
  final Color activeColor;      
  final Color inactiveColor;
  final List<TimeRangeButton> items;    



  const TimeRangeMenu({
    this.mostrar         = true,
    this.backgroundColor = Colors.white,
    this.activeColor     = Colors.deepPurple,
    this.inactiveColor   = Colors.blueGrey,
    required this.items
    });


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( _ ) => _TimeRangeModel(),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: ( mostrar ) ? 1 : 0,
        child: Builder(
          builder: (context) {
            Provider.of<_TimeRangeModel>(context).backgroundColor = backgroundColor;
            Provider.of<_TimeRangeModel>(context).activeColor     = activeColor;
            Provider.of<_TimeRangeModel>(context).inactiveColor   = inactiveColor;
            return _TimeRangeMenuBackground(
              child: _TimeRangeItems(items),
             );
          }
        ),
      ),
    );
  }
}

class _TimeRangeMenuBackground extends StatelessWidget {

  final Widget child;
  const _TimeRangeMenuBackground({required this.child});

  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Provider.of<_TimeRangeModel>(context).backgroundColor;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: child,
      width: 100,
      height: 60,
      
    );
  }
}

class _TimeRangeItems extends StatelessWidget {

  final List<TimeRangeButton> menuItems;

  const _TimeRangeItems( this.menuItems );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(menuItems.length, (index) => _TimeRangeMenuButton( index, menuItems[index] ) )
    );
  }
}

class _TimeRangeMenuButton extends StatelessWidget {
  final int index;
  final TimeRangeButton item;

  const _TimeRangeMenuButton(
    this.index,
    this.item
  );
  
  @override
  Widget build(BuildContext context) {

    final itemSeleccionado = Provider.of<_TimeRangeModel>(context).itemSeleccionado;
    final menuModel = Provider.of<_TimeRangeModel>(context);

    return GestureDetector(
      onTap: (){
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        child: Container(
          
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 34, 7, 82),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Text(
                  item.period, style: TextStyle(fontSize: 20,
                  color: ( itemSeleccionado == index ) ? menuModel.activeColor : menuModel.inactiveColor,)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class _TimeRangeModel extends ChangeNotifier{
  int _itemSeleccionado = 0;
  Color backgroundColor = Colors.white;
  Color activeColor     = Colors.black;
  Color inactiveColor   = Colors.blueGrey;
  
  int get itemSeleccionado => _itemSeleccionado;
  set itemSeleccionado( int index ){
    _itemSeleccionado = index;
    notifyListeners();
  }
}