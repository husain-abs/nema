import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../constants.dart';
import '../widgets/buttonWithText.dart';
import '../widgets/customTextField.dart';
import '../widgets/nemaIconWidget.dart';
import 'homeScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController? emailController;
  TextEditingController ? passwordController;
  TextEditingController ? phoneController;
  TextEditingController ? ageController;
  TextEditingController ? addressController;
  TextEditingController ? nationaIdCont;
  TextEditingController ? carController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();
    ageController = TextEditingController();
    nationaIdCont = TextEditingController();
    addressController = TextEditingController();
    carController = TextEditingController();
  }
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor:  PRIMARY_COLOR,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 100,),
                NemaIcon(),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: MediaQuery.of(context).size.height/2+200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(50))
                  ),
                  child: Form(
                      key: _formKey,
                    child: ListView(
                      padding: EdgeInsets.only(bottom: 300),
                      children:  [
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign up into your Account',style:TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 40,),
                        CustomInput(hintText: 'Email',errorText: 'Email must not be Empty!',controller: emailController,),
                        SizedBox(height: 30,),
                        CustomInput(hintText: 'Password',errorText: 'Password must not be Empty!',controller: passwordController,),
                        SizedBox(height: 30,),
                        CustomInput(hintText: 'Phone',errorText: 'Phone must not be Empty!',controller: phoneController,),
                        SizedBox(height: 30,),
                        CustomInput(hintText: 'Age',controller: ageController,),
                        SizedBox(height: 30,),
                        CustomInput(hintText: 'Address',controller: addressController,),
                        SizedBox(height: 30,),
                        CustomInput(hintText: 'National Id',controller: nationaIdCont,),
                        SizedBox(height: 30,),
                        CustomInput(hintText: 'Car Registration',controller: carController,),
                        SizedBox(height: 30,),

                        Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                  child: Icon(Icons.add_photo_alternate_outlined,size: 150,)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text('Personal Photo',style: textLargStyle.copyWith(color: Colors.black87,fontSize: 22),),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: ButtonWithText(buttonText: 'Sign up',
            callback: () {
              if (_formKey.currentState!.validate()) {
                scaffoldKey.currentState!.showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
                Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));

              }

        }),
    );
  }
}
