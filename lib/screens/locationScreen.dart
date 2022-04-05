import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nima/widgets/nemaIconWidget.dart';

import '../widgets/nemaSmallIcon.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/map.png',fit: BoxFit.cover,
              ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),iconSize: 30,),
                NemaSmallIcon()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
