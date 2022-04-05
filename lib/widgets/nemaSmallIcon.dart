import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NemaSmallIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('N',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                SizedBox(width: 10,),
                Text('e',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                SizedBox(width: 10,),
                Text('m',style: TextStyle(fontSize: 26,color: Colors.red,fontWeight: FontWeight.w600),),
                SizedBox(width: 10,),
                Text('a',style: TextStyle(fontSize: 26,color: Colors.red,fontWeight: FontWeight.w600),),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: SizedBox(height: 2,width: 65,child: Container(
                color: Colors.grey[600],
              ),),
            )
          ]
      ),
    );
  }
}
