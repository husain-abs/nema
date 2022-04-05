import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nima/data.dart';
import 'package:nima/models/deliveryItem.dart';
import 'package:nima/screens/deliverFoodScreen.dart';
import 'package:nima/widgets/buttonWithText.dart';
import 'package:nima/widgets/customCard.dart';

import '../../constants.dart';
import '../../widgets/nemaIconWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DeliveryItem> items = deliveryItems;
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
          padding: EdgeInsets.only(top: 20 ,right: 20,left: 20),
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
                  CustomeCircularBox(text1: 'Deliver',text2: '22',text3: '',text4: 'Times'),
                  CustomeCircularBox(text1: 'Account',text2: '12',text3: '',text4: 'Food')
                ]
              ),
              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 20),
                child: Text('Requests',style: textLargStyle.copyWith(color: Colors.black,fontSize: 28),),
              ),

              Container(
                height: MediaQuery.of(context).size.height/2+30,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: items.length,
                itemBuilder: (context,index){
                  return  Column(
                    children: [
                      CustomCard(imgPath: items[index].imgPath!, title: items[index].title!, exDate: items[index].exDate!, km: items[index].km!, callBack: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>DeliverFoodScreen(item: items[index])));
                      },),
                      SizedBox(height: 15,)
                    ],
                  );

                }),
              )
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

