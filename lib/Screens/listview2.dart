import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  final options = const ['al6','al12','al13','al14','al15'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Lista tipo 2'), ///titulo 
      ),
      body: ListView.separated(
        itemBuilder:(context, index) =>  ListTile(
            leading: 
            const Icon(Icons.connect_without_contact , color: Colors.orange,), /// ICONO CORRESPONDIENTE A LA IZQUIERDA
            title: Text(options[index]), ///LLAMAR A LA LISTA 
            trailing: const Icon(Icons.arrow_forward_ios_outlined , color: Colors.green,),  ///ICONO DE NAVEGAR CON COLOR
            onTap: (){
              final e = options[index];
              print(e);
            }, /// GENERA EL ICONO PARA INGRESAR
          ), 
        separatorBuilder:(_,__) => const Divider(), ///SIMPLEMENTE DIVIDIR 
        itemCount: options.length)//TAMAÑO DE LA LISTA
    );
  }
}