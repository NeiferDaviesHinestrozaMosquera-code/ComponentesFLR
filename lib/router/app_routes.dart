import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';

import '../Screens/screens.dart';

class AppRoutes {

static const initialRoute = 'home'; 

static final MenuOptions = <MenuOption>[
   // MenuOption(route: 'home', icon: Icons.home_repair_service, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'Listview1 Screen 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt_outlined, name: 'Listview2 Screen 2', screen: const Listview2Screen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.alarm, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.woman_outlined, name: 'Avatar Screen', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.animation, name: 'Animated Screen', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_outlined, name: 'Inputs Screen', screen: const InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.slideshow_rounded, name: 'Slider Screen', screen: const SliderScreen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.list_rounded, name: 'Infiniti Screen', screen: const ListViewBuilderScreen()),


];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){


    Map<String, Widget Function(BuildContext)> appRoutes = {
      
    };
      appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});


      for (final option in MenuOptions) {
        appRoutes.addAll({ option.route : (BuildContext context) => option.screen});
      }

    return appRoutes;
  }

// static Map<String, Widget Function(BuildContext)> routes = { //////LISTA DE PANTALLAS 
//           'listview1':(BuildContext context) => Listview1Screen(),
//           'listview2':(BuildContext context) => Listview2Screen(),
//           'card'     :(BuildContext context) => CardScreen(),
//           'alert'    :(BuildContext context) => AlertScreen(),
//           'home'     :(BuildContext context) => HomeScreen(),
//       };


    static Route<dynamic>  onGenerateRoute (RouteSettings settings){
       
       return MaterialPageRoute(
         builder: (context) =>  const AlertScreen(),
         );
                
      }
}