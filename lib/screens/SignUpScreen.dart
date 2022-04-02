import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nema/constants.dart';
import 'package:nema/screens/homeScreen.dart';
import 'package:nema/screens/welcomScreen.dart';
import 'package:nema/widgets/buttonWithText.dart';

import '../widgets/customTextFielt.dart';
import '../widgets/nemaIconWedget.dart';
import 'forgotPasswordScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? phoneController;
  TextEditingController? ageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();
    ageController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                NemaIcon(),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: MediaQuery.of(context).size.height / 2 + 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign up into your Account',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomInput(
                        hintText: 'Email',
                        errorText: 'Email cant be Emty!',
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomInput(
                        hintText: 'Password',
                        errorText: 'Password cant be Emty!',
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomInput(
                        hintText: 'Phone',
                        errorText: 'Phone cant be Emty!',
                        controller: phoneController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomInput(
                        hintText: 'Age',
                        errorText: 'Age cant be Emty!',
                        controller: ageController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ButtonWithText(
                        buttonText: 'Sign up',
                        callback: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomePage()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
