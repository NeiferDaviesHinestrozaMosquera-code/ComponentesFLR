import 'package:flutter/material.dart';

import '../theme/themess.dart';

class CostomCardType1 extends StatelessWidget {
  const CostomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.nat_sharp , color:Themess.second,),
            title: Text('Soy un titulo'),
            subtitle: Text('biiuwb owdbwo woindowbcn owcnwoicbiiuwb owdbwo woindowbcn owcnwoic biiuwb owdbwo woindowbcn owcnwoic biiuwb owdbwo woindowbcn owcnwoic'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){

                }, 
                child: const Text('Cancelar'),
                ),
                TextButton(onPressed: (){

                }, 
                child: const Text('Ok')
                ),
            
              ],
            ),
          )
        ],
      ),
    );
  }
}