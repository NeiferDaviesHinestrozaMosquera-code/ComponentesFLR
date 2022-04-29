import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context ){
      showCupertinoDialog(
        barrierDismissible: true,
        context: context, 
        builder: (context){
            return CupertinoAlertDialog(
                title: const Text('Titulo Alerta'),
                content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                Text('Este es el contenido'),
                SizedBox(height: 10,),
                FlutterLogo( size: 100,)
              ],
            ),

             actions: [
                TextButton(
                  onPressed: () {
                     Navigator.pop(context);
                  } ,
                 child: const Text('Cancelar' , style:  TextStyle(color: Colors.redAccent),)
              
                ),

                 TextButton(
                  onPressed: () {
                     Navigator.pop(context);
                  } ,
                 child: const Text('Ok')
              
                )
              ],
            );
        }
        );
  }

  void displayDialogAndroid( BuildContext context) {
     
     showDialog(
       barrierDismissible: false,
       context: context, 
       builder: (context)   {


          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo Alerta'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido'),
                SizedBox(height: 10,),
               FlutterLogo( size: 100,)
              ],
            ),

           actions: [
                TextButton(
                  onPressed: () {
                     Navigator.pop(context);
                  } ,
                 child: const Text('Cancelar' , style:  TextStyle(color: Colors.redAccent),)
              
                ),

                 TextButton(
                  onPressed: () {
                     Navigator.pop(context);
                  } ,
                 child: const Text('Ok')
              
                )
              ],
          );
        }
      );

  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child:ElevatedButton(
        //      style: ElevatedButton.styleFrom(
        //        primary: Colors.indigo , 
        //      shape: const StadiumBorder() , 
        //      elevation: 0),
            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10 , ),
              child:  Text('Mostrar alertas'),
            ),
            
            onPressed: () =>  
            Platform.isAndroid ? ////////SELECTOR DE PLATAFORMA
             displayDialogAndroid (context) : ///////VISTA EN ANDROID
             displayDialogIos (context) ///////VISTA EN IOS
         )
      ),
      floatingActionButton:  FloatingActionButton(
        child: const Icon(Icons.close),
         onPressed:() {
           Navigator.pop(context);
         },
        ),
    );
  }
}