import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nema/constants.dart';
import 'package:nema/screens/loginScreen.dart';
import 'package:nema/screens/welcomScreen.dart';

import '../widgets/buttonWithText.dart';
import '../widgets/customTextFielt.dart';
import '../widgets/nemaIconWedget.dart';
import 'SignUpScreen.dart';

class signUpTypePage extends StatefulWidget {
  @override
  _signUpTypePageState createState() => _signUpTypePageState();
}

class _signUpTypePageState extends State<signUpTypePage> {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('You Are',textAlign: TextAlign.center,style:TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.w600),),
                        ],
                      ),

                      SizedBox(height: 70,),

                      ButtonList()
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
class ButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[700]!,width: 3),
            boxShadow: [BoxShadow(color: Colors.redAccent[100]!,offset: Offset(1,3),blurRadius: 5,)],
            borderRadius: BorderRadius.circular(50)
          ),
          child: RaisedButton(
            color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 85),

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_)=>
                  SignUpScreen()
              )); },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                child: Text('Donator',style: TextStyle(color: Colors.redAccent[100],fontSize: 16,),),
              )),
        ),
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[700]!,width: 3),
              boxShadow: [BoxShadow(color: Colors.redAccent[100]!,offset: Offset(1,3),blurRadius: 5,)],

              borderRadius: BorderRadius.circular(50)
          ),
          child: RaisedButton(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 80),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {
//                Navigator.push(context, MaterialPageRoute(builder: (_)=>
//                  signUpTypePage()
//              ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                child: Text('Valunteer',style: TextStyle(color: Colors.redAccent[100],fontSize: 16,),),
              )),
        ),
        SizedBox(height: 20,),

        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[700]!,width: 3),
              boxShadow: [BoxShadow(color: Colors.redAccent[100]!,offset: Offset(1,3),blurRadius: 5,)],

              borderRadius: BorderRadius.circular(50)
          ),
          child: RaisedButton(
            color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 90),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              onPressed: () {
//              Navigator.push(context, MaterialPageRoute(builder: (_)=>
//              ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                child: Text('Needy',style: TextStyle(color: Colors.redAccent[100],fontSize: 16,),),
              )),
        ),

      ],
    );
  }
}

