import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nema/models/Food.dart';
import 'package:nema/widgets/customTextFielt.dart';

import '../../constants.dart';
import '../../widgets/nemaIconWedget.dart';

class DonateFoodScreen extends StatefulWidget {

  @override
  State<DonateFoodScreen> createState() => _DonateFoodScreenState();
}

class _DonateFoodScreenState extends State<DonateFoodScreen> {
  late TextEditingController priceController;
  late TextEditingController conditionCon;
  late TextEditingController foodTypeController;
  late TextEditingController pickUpLocationCon;
  late TextEditingController expiratoinDateCon;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    priceController = TextEditingController();
    foodTypeController = TextEditingController();
    conditionCon = TextEditingController();
    pickUpLocationCon = TextEditingController();
    expiratoinDateCon = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
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
                height: MediaQuery.of(context).size.height/2+315,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text('DONATE FOOD',style: textLargStyle.copyWith(color: Colors.black87,fontSize: 22),),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Food Type:',style: textSmallStyle.copyWith(color: Colors.grey[400]!,fontSize: 18,fontWeight: FontWeight.w600),),
                          CustomInput( keyboardType: TextInputType.text,controller: foodTypeController,),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Pick up location:',style: textSmallStyle.copyWith(color: Colors.grey[400]!,fontSize: 18,fontWeight: FontWeight.w600),),
                          CustomInput( keyboardType: TextInputType.text,controller: pickUpLocationCon,),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Expiration Date:',style: textSmallStyle.copyWith(color: Colors.grey[400]!,fontSize: 18,fontWeight: FontWeight.w600),),
                          CustomInput( hintText: 'dd/mm/yyyy',keyboardType: TextInputType.text,controller: expiratoinDateCon,),
                        ],
                      ),
                    ),

                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(' Condition:',style: textSmallStyle.copyWith(color: Colors.grey[400]!,fontSize: 18,fontWeight: FontWeight.w600),),
                      Container(
                        height: 55,
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey,width: 2)
                        ),
                        child: Center(
                          child: TextFormField(

                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(icon: const Icon(Icons.keyboard_arrow_down_outlined,size: 30,), onPressed: () {
                              },),
                              hintText: 'Untouched',
                              border: InputBorder.none,
                              fillColor: Theme.of(context).primaryColor,

                            ),
                            textInputAction: TextInputAction.next,
                            controller: conditionCon,


                          ),
                        ),
                      ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text('Food Photo',style: textLargStyle.copyWith(color: Colors.black38,fontSize: 22),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                                child: Icon(Icons.add_photo_alternate_outlined,size: 150,)
                            ),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(height: 5,),

                    RaisedButton(
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      onPressed: (){
                        Fluttertoast.showToast(msg: 'Donation sent successfully');

                      },
                      color: PRIMARY_COLOR,
                      child:Center(
                        child: Text('Send',style: textSmallStyle.copyWith(fontSize: 18),),
                      ),
                    )


                  ],
                ),
              ),
            ],
          ),
        ),      ),
    );
  }
}
