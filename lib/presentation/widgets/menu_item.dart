import 'package:flutter/material.dart';


class MenuItem{
  final String nombre;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.nombre,
    required this.link,
    required this.icon,
  });
}

const appMenuItem = <MenuItem>[
  MenuItem(nombre: "Primera Pantalla", link: "/screen1", icon: Icons.abc_rounded),
  MenuItem(nombre: "Loading Pantalla", link: "/loading_page", icon: Icons.account_balance),
  MenuItem(nombre: "Segunda Pantalla", link: "/screen1", icon: Icons.hardware_outlined),

];