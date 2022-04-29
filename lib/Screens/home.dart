import 'package:flutter/material.dart';
import 'package:fluttercomponentes/router/app_routes.dart';
import 'package:fluttercomponentes/theme/themess.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final MenuOptions = AppRoutes.MenuOptions ; ////DEFINIR NOMBRE PARA LLAMAR RUTAS

    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes en flutter'),
      ),
      body: ListView.separated(
         itemBuilder:((context, index) => ListTile(
           title: Text(MenuOptions[index].name), /////LLAMAR EL NOMBRE DE CADA VALOR DE LA LISTA
           leading: Icon(MenuOptions[index].icon , color: Themess.second,), /////LLAMAR EL ICONO DE CADA VALOR DE LA LISTA
           onTap: (){
            //  final route = MaterialPageRoute(
            //    builder:(context) => Listview1Screen(),);
            //   Navigator.pushReplacement(context, route);

            Navigator.pushNamed(context,MenuOptions[index].route); ////////NAVEGAR CON EL NOMBRE DE LA RUTA
           },
         )),
         separatorBuilder:( _, __ ) => const Divider(), 
         itemCount:MenuOptions.length)
    );
  }
}