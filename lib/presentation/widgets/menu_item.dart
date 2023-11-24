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
  MenuItem(nombre: "Primera Pantalla", link: "/", icon: Icons.abc_rounded),
  MenuItem(nombre: "Loading Pantalla", link: "/login_screen", icon: Icons.account_balance),

];