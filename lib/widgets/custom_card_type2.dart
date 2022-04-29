import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/themess.dart';



class CustomCardType2 extends StatelessWidget {


  final String imageUrl;

  final String? name;


  const CustomCardType2({ Key? key, required this.imageUrl, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,  ////////REDONDEAR CONFORME  A LAS ESPECIFICACIONES DE LA CARD 

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)   ////////7REDODNDNE DE LA CARD CON IMAGEN
        ),

      elevation: 20,  //////LA CANTIDAD DE SOMBRA QUE GENERA CADA CARD

      shadowColor: Themess.primary.withOpacity(0.6),  ///////COLOR DE SOMBRA DE CADA CARD CON TRANSPARENCIA
      
      child: Column(
        children: [

             FadeInImage(
              image: NetworkImage(imageUrl), 
              placeholder: const AssetImage('assets/jar-loading.gif'), //LAMAR LA IMAGEN DE CARGA
              width: double.infinity, /////PARA QUE OCUPE TODoO EL ANCH0oo
              height: 230,
              fit: BoxFit.cover, //////////7PARA QUE LA IMAGEN SE ADAPTE 
              fadeInDuration: const Duration(milliseconds: 300), /////////ACELERAR LA MEMORIA CACHE
              ),

              if (name != null)

              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding:const  EdgeInsets.only(right: 20 , top: 10 , bottom:  10),
                child: Text(name!))
         ],
        ),
      );
  }
}