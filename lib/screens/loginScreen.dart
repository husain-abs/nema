import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nema/screens/forgotPasswordScreen.dart';
import 'package:nema/screens/homeScreen.dart';
import 'package:nema/widgets/buttonWithText.dart';
import 'package:nema/widgets/customTextFielt.dart';

import '../widgets/nemaIconWedget.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? emailController;
  TextEditingController ? passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
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
                          Text('Log in into your Account!',style:TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(height: 50,),
                      CustomInput(hintText: 'Email',errorText: 'Email cant be Emty!',controller: emailController,),
                      SizedBox(height: 40,),
                      CustomInput(hintText: 'Password',errorText: 'Password cant be Emty!',controller: passwordController,),
                      InkWell(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>ForgotPasswordScreen()));

                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 8.0,top: 10),
                          child: Text('Forgot password?',style:TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600),),
                        ),
                      ),
                      SizedBox(height: 80,),

                      ButtonWithText(buttonText: 'Log in', callback: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      })

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
