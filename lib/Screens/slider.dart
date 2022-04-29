import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/themess.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({ Key? key }) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sdliderEnbale = true ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Slider & checkes'),
      ),
      body: Column(
          children: [
          Slider.adaptive(
      
            min:50 ,
            max: 400,
            activeColor: Themess.second,
            divisions: 10,
            value: _sliderValue,
            onChanged: _sdliderEnbale ? (value){ ///ACA SE ACTIVA EL SLIDER CON EL CHECK
           _sliderValue = value;
                  setState(() {
                    
                  });
                 
            }
            : null
          ),


          // Checkbox(
          //   value: _sdliderEnbale ,
          //  onChanged: (value){
          //     _sdliderEnbale = value ?? true; ///////SINO TIENE NINGUN VALOR TOMA COMO VERDADERO
          //  setState(() {
             
          //  });
          //  }
          //  ),


          // Switch(value: _sdliderEnbale,   onChanged: (value) => setState(() {
          //       _sdliderEnbale = value;
          //     })),

          SwitchListTile.adaptive(
            
            activeColor: Themess.primary,
              title: Text('Habilitar Slider'),
              value: _sdliderEnbale, 
              onChanged: (value) => setState(() {
                _sdliderEnbale = value;
              })),

          // Center(
          //   child: CheckboxListTile(
          //     activeColor: Themess.primary,
          //     title: Text('Habilitar Slider'),
          //     value: _sdliderEnbale, 
          //     onChanged: (value) => setState(() {
          //       _sdliderEnbale = value ?? true;
          //     })
          //     ),
          // ),
          const AboutListTile(), ///MUESTRA TODO LO QUE USO EN LA APP
          
          Expanded(
            child: SingleChildScrollView(
              child: Image(image: NetworkImage('https://i.pinimg.com/originals/ce/b2/e6/ceb2e6b6285bd37f13d6a5d949a4ce10.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
              height: _sliderValue,
              ),
            ),
          ),
          
          ////SizedBox(height: 50,) ///SOLO POR SI ACASO , SI LA IMAGEN SE PASA DEL TAMAÑO DE LA PANTALLA
          ],
        ),
      
    );
  }
}