import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  String imgPath;
  String km;
  String title;
  String exDate;
  VoidCallback callBack;
  CustomCard({Key? key,required this.callBack,required this.imgPath,required this.title, required this.exDate,required this.km}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          color: Colors.grey[100],
        ),
        child: Center(
            child: Column(
                children: [
                  Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          height: 170,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  imgPath
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Container(padding: EdgeInsets.all(10), height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.5),

                            ),
                            child: Center(child: Text(km,style: textSmallStyle.copyWith(color: Colors.black87,fontSize: 14),)),
                          ),
                        )]
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title,style: textSmallStyle.copyWith(color: Colors.black87,fontSize: 16),),
                            Text('Exp Date: $exDate',style: textSmallStyle.copyWith(color: Colors.grey,fontSize: 14),),

                          ],
                        ),
                        InkWell(
                          onTap:
                              callBack,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            height: MediaQuery.of(context).size.width/3-90,
                            width: MediaQuery.of(context).size.width/3-20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text('Deliver',style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                SizedBox(width: 5,),
                                Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.black87,

                                    ),
                                    child: Center(child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(Icons.arrow_forward,size: 20,color: Colors.white,),
                                    )))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]
            )
        ),
      ),
    );

  }
}
