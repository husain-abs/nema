import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nima/models/deliveryItem.dart';
import 'package:nima/widgets/buttonWithText.dart';
import 'package:nima/widgets/customCard.dart';

import '../../constants.dart';
import '../../widgets/nemaIconWidget.dart';
import 'locationScreen.dart';

class DeliverFoodScreen extends StatelessWidget {
  final DeliveryItem item;
  const DeliverFoodScreen({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Column(
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
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))
            ),
            height: MediaQuery.of(context).size.height/2+300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: MediaQuery.of(context).size.width-100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        item.imgPath!
                      )
                    )
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: MediaQuery.of(context).size.height/3+100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Padding(

                        padding: const EdgeInsets.only(left: 8.0,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item.title!,style: textLargStyle.copyWith(color: Colors.black,fontSize: 32),),
                            Material(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              elevation: 5,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>LocationScreen()));

                                },
                                child: Container(
                                  height: 45,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      color: PRIMARY_COLOR,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text(item.km!),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('PICK UP LOCATION:\n     ${item.pickLocation!}',style: textSmallStyle.copyWith(color: Colors.black87,fontSize: 14),),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('EXPIRATION DATE:\n     ${item.exDate!}',style: textSmallStyle.copyWith(color: Colors.black87,fontSize: 14),),
                      ),
                      Spacer(),
                      RaisedButton(padding: EdgeInsets.all(10),shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),color: PRIMARY_COLOR,onPressed: (){
                        Fluttertoast.showToast(msg: 'Delivering...');
                      },child: Center(
                        child: Text('ACCEPT',style: textSmallStyle.copyWith(fontSize: 16),),
                      ),),
                      SizedBox(height: 100,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


