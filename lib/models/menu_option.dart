

import 'package:flutter/material.dart';

class MenuOption {

final String route; ///////RUTA
final IconData icon; ////////7ICNO
final String name; /////NOMBRE
final Widget screen; //////VENTANA

  MenuOption({
   required this.route, 
   required this.icon,
   required this.name, 
   required this.screen
   }); 

}