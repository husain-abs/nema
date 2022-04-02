import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nema/screens/loginScreen.dart';
import 'package:nema/screens/welcomScreen.dart';

import '../widgets/buttonWithText.dart';
import '../widgets/customTextFielt.dart';
import '../widgets/nemaIconWedget.dart';

class NewPasswordScreen extends StatefulWidget {
  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController ? passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = TextEditingController();
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
                          Text('Enter your new password',textAlign: TextAlign.center,style:TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(height: 50,),
                      CustomInput(hintText: 'Password',errorText: 'Enter a password!',controller: passwordController,),
                      const SizedBox(height: 80,),

                      ButtonWithText(buttonText: 'Save',callback: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>WelcomScreen() 
                        ));
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
