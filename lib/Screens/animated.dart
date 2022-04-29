import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({ Key? key }) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();


}

class _AnimatedScreenState extends State<AnimatedScreen> {

double _width = 50;  ///VARIABLE DE ANCHO
double _height = 50; ///VARIABLE DE ALTO
Color _color = Colors.indigo; ///VARIABLE DE COLOR
BorderRadiusGeometry _borderRadius = BorderRadius.circular(20); ///VARIABLE DE REDONDES DEL AVATAR


void changeShape (){
  setState(() {
    final random = Random(); ///VARIABLE DE VALORES RANDOM

    
    _height = random.nextInt(300).toDouble()+70;
    _width = random.nextInt(300).toDouble()+70;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
      );
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble()+10);
  });
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),  ///////VELOCIDAD DE LA ANIMACION
          curve: Curves.elasticInOut, //////TIPO DE ANIMACION
          width: _width, ///ANCHO
          height: _height, ////ALTURA
          decoration: BoxDecoration(
            color: _color,  
            borderRadius: _borderRadius,
          ),
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_fill_outlined , size: 40,
        ),

        onPressed: changeShape
      ),
    );
  }
}