import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nema/models/Food.dart';
import 'package:nema/widgets/customTextFielt.dart';

import '../../constants.dart';
import '../../widgets/nemaIconWedget.dart';

class HelpCenter extends StatefulWidget {
  final Food food;
  const HelpCenter({Key? key,required this.food}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  late TextEditingController phoneController;
  late TextEditingController multiLineController;
  late TextEditingController emailController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    multiLineController = TextEditingController();

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
                          Text('Help Center',style: textLargStyle.copyWith(color: Colors.black,fontSize: 26),),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    Card(
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
                                height: 120,width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(10),right: Radius.circular(40)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          widget.food.imgPath!
                                      )
                                  ),
                                ),),
                              SizedBox(width: 10,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.food.foodName!,style: textLargStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
                                  SizedBox(height: 5,),
                                  Text(widget.food.isDelivered!?'Delivered':'Not delivered',style: textSmallStyle.copyWith(color: Colors.grey[600],fontSize: 13),),
                                  SizedBox(height: 30,),

                                  Container(
                                    width: MediaQuery.of(context).size.width-170,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(widget.food.date!,style: textSmallStyle.copyWith(color: Colors.grey[600],fontSize: 13),),

                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ],

                          )
                      ),
                    ),
                    Text('Please Write details here.',style: textLargStyle.copyWith(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomInput( hintText: 'your phone',keyboardType: TextInputType.phone,controller: phoneController,),
                    ),
                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomInput( hintText: 'your phone',keyboardType: TextInputType.emailAddress,controller: emailController,),
                    ),
                    SizedBox(height: 30,),
                    Text('What is your problem?',style: textLargStyle.copyWith(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w500),),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        controller: multiLineController,
                        maxLines: 3,
                        decoration: InputDecoration(
                          labelText: 'Enter multLine text',
                          hintText: 'Type somthing...',
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),

                    RaisedButton(
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      onPressed: (){
                        Fluttertoast.showToast(msg: 'Request sent successfully');

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
        ),
      ),
    );
  }
}
