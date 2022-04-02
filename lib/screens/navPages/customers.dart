import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nema/models/Food.dart';
import 'package:nema/screens/helpCenter.dart';

import '../../constants.dart';
import '../../data.dart';
import '../../models/customer.dart';
import '../../widgets/nemaIconWedget.dart';

class Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Customer> customers = customersData;
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
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50))
          ),
          height: MediaQuery.of(context).size.height/2+250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Customers',style: textLargStyle.copyWith(color: Colors.black,fontSize: 26),),
              ),
              SizedBox(height: 50,),
              Container(
                height: MediaQuery.of(context).size.height-280,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: customers.length,
                    itemBuilder: (context,index){
                      return  Container(
                        color: Colors.white,
                        child: Card(
                          margin: EdgeInsets.only(bottom: 15),
                          color: Colors.orange.shade50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation: 5,
                          child: Center(
                              child:Row(
                                children: [
                                  Container(
                                    height: 100,width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: PRIMARY_COLOR
                                    ),
                                  child: Center(child: Icon(Icons.person_outline,color: Colors.white,size: 60,)),),
                                  SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:10.0),
                                        child: Text(customers[index].name!,style: textLargStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(customers[index].phone!,style: textSmallStyle.copyWith(color: Colors.grey[600],fontSize: 13),),
                                      SizedBox(height: 30,),

                                      Container(
                                        width: MediaQuery.of(context).size.width-170,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 8.0),
                                              child: Text(customers[index].address!,style: textSmallStyle.copyWith(color: Colors.grey[600],fontSize: 13),),
                                            ),

                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ],

                              )
                          ),
                        ),
                      );

                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
