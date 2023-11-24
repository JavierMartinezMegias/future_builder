import 'package:flutter/material.dart';
import 'package:future_builder/presentation/widgets/menu_item.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu>{

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    
   
    return NavigationDrawer(selectedIndex: navDrawerIndex,
      onDestinationSelected: (value)
      {
        setState(() {
          navDrawerIndex = value;
        });
        
        final menuItem = appMenuItem[value];
        context.push(menuItem.link);
        context.pop();
      },
      children: [

        const Text("MENU"),
        const Padding(padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
        child: Divider(color: Colors.black,) ),
        
        ...appMenuItem
        .sublist(0,2)
        .map((e) => NavigationDrawerDestination(
          icon: Icon(e.icon), 
          label: Text(e.nombre))),

        const Padding(padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
        child: Divider(color: Colors.black,) ),

        ...appMenuItem
        .sublist(2)
        .map((e) => NavigationDrawerDestination(
          icon: Icon(e.icon), 
          label: Text(e.nombre))),

    ]);
  }
  

}