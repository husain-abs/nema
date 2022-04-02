import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nema/screens/newPasswordScreen.dart';
import 'package:nema/widgets/buttonWithText.dart';

import '../widgets/customTextFielt.dart';
import '../widgets/nemaIconWedget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController ? emailController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,

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
                  height: MediaQuery.of(context).size.height/2+150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(50))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:  [
                      SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Enter your Email to reset\n your password',textAlign: TextAlign.center,style:TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.w600),)),
                        ],
                      ),
                      SizedBox(height: 50,),
                      CustomInput(hintText: 'Email',errorText: 'Email cant be Emty!',controller: emailController,),
                      SizedBox(height: 80,),

                      ButtonWithText(buttonText: 'Send',callback: (){

                        Navigator.push(context, MaterialPageRoute(builder: (_)=>NewPasswordScreen()
                        ));
                        Fluttertoast.showToast(msg: 'Request sent successfully');

                      },)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
