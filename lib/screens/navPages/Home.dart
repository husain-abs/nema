import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nema/constants.dart';
import 'package:nema/screens/sellFoodScreen.dart';

import '../../widgets/nemaIconWedget.dart';
import '../donateFoodScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10 ,top: 25),
              child: NemaIcon(),
            ),
          ],
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.only(top: 50 ,right: 20,left: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50))
          ),
          height: MediaQuery.of(context).size.height/2+250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomeCircularBox(text1: 'last',text2: '22',text3: 'box',text4: 'Donation'),
                  CustomeCircularBox(text1: 'Account',text2: '18',text3: '',text4: 'Food')
                ]
              ),
              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Donation',style: textLargStyle.copyWith(color: Colors.black),),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>DonateFoodScreen()));
                },
                child: Card(
                  color: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 5,
                  child: Center(
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle_outline,size: 100,),
                          Text('New Donation',style: textLargStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 28),),

                        ],

                      ),
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>SellFoodScreen()));
                },
                child: Card(
                  color: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 5,
                  child: Center(
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle_outline,size: 100,),
                          Text('Sell Food',style: textLargStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 28),),

                        ],

                      ),
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomeCircularBox extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  const CustomeCircularBox({Key? key, required this.text1,required this.text2,required this.text3,required this.text4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.green[800]!,
        border: Border.all(color: Colors.green,width: 8),
      ),
      child: Column(
        children:  [
           Text(text1,style: textSmallStyle,),
          Container(
            height: 35,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(text2,style: textLargStyle,),
                Text(text3,style: textSmallStyle,),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Text(text4,style: textSmallStyle,),
        ],
      ),
    )
    ;
  }
}

