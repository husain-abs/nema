import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nema/models/Food.dart';
import 'package:nema/screens/helpCenter.dart';

import '../../constants.dart';
import '../../data.dart';
import '../../models/customer.dart';
import '../../widgets/nemaIconWedget.dart';
import '../SignUpScreen.dart';
import '../settings/changeEmailScreen.dart';
//USEFUL FOR LATER: Icons.person_outline

class Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 25),
              child: NemaIcon(),
            ),
          ],
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
          height: MediaQuery.of(context).size.height / 2 + 250,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Settings',
                  style:
                      textLargStyle.copyWith(color: Colors.black, fontSize: 26),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
        Padding(padding: const EdgeInsets.all(8)),
        Expanded(
          child: RaisedButton(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 85),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ChangeEmailScreen()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Text(
                  'Donator',
                  style: TextStyle(
                    color: Colors.redAccent[100],
                    fontSize: 16,
                  ),
                ),
              )),
        )
      ],
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
              border: Border.all(color: Colors.grey[700]!, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent[100]!,
                  offset: Offset(1, 3),
                  blurRadius: 5,
                )
              ],
              borderRadius: BorderRadius.circular(50)),
          child: RaisedButton(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 85),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpScreen()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Text(
                  'Donator',
                  style: TextStyle(
                    color: Colors.redAccent[100],
                    fontSize: 16,
                  ),
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[700]!, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent[100]!,
                  offset: Offset(1, 3),
                  blurRadius: 5,
                )
              ],
              borderRadius: BorderRadius.circular(50)),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Text(
                  'Valunteer',
                  style: TextStyle(
                    color: Colors.redAccent[100],
                    fontSize: 16,
                  ),
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[700]!, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent[100]!,
                  offset: Offset(1, 3),
                  blurRadius: 5,
                )
              ],
              borderRadius: BorderRadius.circular(50)),
          child: RaisedButton(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 90),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
//              Navigator.push(context, MaterialPageRoute(builder: (_)=>
//              ));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Text(
                  'Needy',
                  style: TextStyle(
                    color: Colors.redAccent[100],
                    fontSize: 16,
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
