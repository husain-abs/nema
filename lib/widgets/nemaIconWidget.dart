import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NemaIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children:
         [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('N',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600),),
              SizedBox(width: 10,),
              Text('e',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600),),
              SizedBox(width: 10,),
              Text('m',style: TextStyle(fontSize: 50,color: Colors.red,fontWeight: FontWeight.w600),),
              SizedBox(width: 10,),
              Text('a',style: TextStyle(fontSize: 50,color: Colors.red,fontWeight: FontWeight.w600),),

            ],
          ),
           Padding(
             padding: const EdgeInsets.only(left: 80.0),
             child: SizedBox(height: 3,width: 100,child: Container(
               color: Colors.grey[600],
             ),),
           )
        ]
    );
  }
}
