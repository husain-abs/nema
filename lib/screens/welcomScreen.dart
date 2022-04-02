import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nema/screens/SignUpScreen.dart';
import 'package:nema/screens/signUpTypeScreen.dart';
import 'package:nema/widgets/nemaIconWedget.dart';

import 'loginScreen.dart';

class WelcomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            NemaIcon(),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height/2+150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50))
              ),
              child: Column(
                children:  [
                  SizedBox(height: 50,),
                  Text('Welcome!',style:TextStyle(fontSize: 32,fontWeight: FontWeight.w600),),
                  SizedBox(height: 50,),
                  RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_)=>
                          signUpTypePage()
                  )); },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                    child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 16,),),
                  )),
                  SizedBox(height: 20,),

                  Row(mainAxisAlignment: MainAxisAlignment.center
                    ,children: [
                      Expanded(
                        child: SizedBox(height: 3,child: Container(
                          color: Colors.grey[600],
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('OR',style: TextStyle(color: Colors.grey[800],fontSize: 20,fontWeight: FontWeight.w600,),),
                      ),
                      Expanded(
                        child: SizedBox(height: 3,child: Container(
                          color: Colors.grey[600],
                        ),),
                      ),

                    ],),
                  SizedBox(height: 20,),
                  RaisedButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_)=>
                          LoginScreen()
                      )); },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                        child: Text('Log in',style: TextStyle(color: Colors.white,fontSize: 16,),),
                      )),


                ],
              ),
            ),
          ],
        )

    );

  }
}
