import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('El mejor sitio de tarjetas'),
      ),
      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
        children: const[
          CostomCardType1(),
          SizedBox(height: 20,), //////DISTANCIA ENTRE CARD Y CARD
          CustomCardType2(imageUrl: 'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg', name: 'Un hermoso paisaje', ),
           SizedBox(height: 20,), //////DISTANCIA ENTRE CARD Y CARD
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR67ANoZxf4Kmcx4y73T84uX1R3-hC-0yDno1l94QjZiuGxPhXHj3iEWoQydsuk_Z8Lwsc&usqp=CAU', name:null, ),
           SizedBox(height: 20,), //////DISTANCIA ENTRE CARD Y CARD
          CustomCardType2(imageUrl: 'https://img.freepik.com/free-vector/beautiful-gradient-spring-landscape_23-2148448598.jpg?w=2000', name: null, ),
           SizedBox(height: 20,), //////DISTANCIA ENTRE CARD Y CARD
          CustomCardType2(imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000', name: null, ),
           SizedBox(height: 50,), //////DISTANCIA ENTRE CARD Y CARD
         
        ],
      )
    );
  }
}

