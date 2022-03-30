import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SocialButton{
  final Function() onPressed;
  final IconData icon;

  SocialButton({ 
    required this.onPressed,
    required this.icon});

}


class SocialMenu extends StatelessWidget {

  final bool mostrar;
  final Color backgroundColor;
  final Color activeColor;      
  final Color inactiveColor;
  final List<SocialButton> items;    



  const SocialMenu({
    this.mostrar         = true,
    this.backgroundColor = Colors.white,
    this.activeColor     = Colors.black,
    this.inactiveColor   = Colors.blueGrey,
    required this.items
    });


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( _ ) => _MenuModel(),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: ( mostrar ) ? 1 : 0,
        child: Builder(
          builder: (context) {
            Provider.of<_MenuModel>(context).backgroundColor = backgroundColor;
            Provider.of<_MenuModel>(context).activeColor     = activeColor;
            Provider.of<_MenuModel>(context).inactiveColor   = inactiveColor;
            return _SocialMenuBackground(
              child: _MenuItems(items),
             );
          }
        ),
      ),
    );
  }
}

class _SocialMenuBackground extends StatelessWidget {

  final Widget child;
  const _SocialMenuBackground({required this.child});

  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Provider.of<_MenuModel>(context).backgroundColor;
    return Container(
      child: child,
      width: 250,
      height: 60,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            blurRadius: 10,
            color: Colors.black38,
            spreadRadius: -5
          )
        ]
      ),
    );
  }
}

class _MenuItems extends StatelessWidget {

  final List<SocialButton> menuItems;

  const _MenuItems( this.menuItems );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(menuItems.length, (index) => _SocialMenuButton( index, menuItems[index] ) )
    );
  }
}

class _SocialMenuButton extends StatelessWidget {
  final int index;
  final SocialButton item;

  const _SocialMenuButton(
    this.index,
    this.item
  );
  
  @override
  Widget build(BuildContext context) {

    final itemSeleccionado = Provider.of<_MenuModel>(context).itemSeleccionado;
    final menuModel = Provider.of<_MenuModel>(context);

    return GestureDetector(
      onTap: (){
        Provider.of<_MenuModel>(context, listen: false).itemSeleccionado = index;
        item.onPressed();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        child: Icon(
          item.icon,
          size: ( itemSeleccionado == index ) ? 30 : 20,
          color: ( itemSeleccionado == index ) ? menuModel.activeColor : menuModel.inactiveColor,
          ),
      ),
    );
  }
}


class _MenuModel extends ChangeNotifier{
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