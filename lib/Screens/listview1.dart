import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  final options = const ['al','al2','al3','al4','al5'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista tipo 1'), ///titulo 
      ),
      body: ListView( ////CREAR LAS LISTA
        children: [

        ...options.map( //// NOMBRE DE LA LISTA Y FUNCION LISTA 
          (e) => ListTile(
            leading: 
            const Icon(Icons.beach_access),
            title: Text(e),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),  /// GENERA EL ICONO PARA INGRESAR
          ),
          ).toList(), //// CONVERTE A LISTA LA FUNCION 

          const Divider(),

         
        ],
      )
    );
  }
}