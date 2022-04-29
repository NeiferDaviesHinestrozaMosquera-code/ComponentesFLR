
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('AVATAR'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child:  Text('SL'),
              backgroundColor: Colors.indigo,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage('https://i.pinimg.com/originals/ce/b2/e6/ceb2e6b6285bd37f13d6a5d949a4ce10.png') ,
        ),
      ),
    );
  }
}