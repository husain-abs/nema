import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWithText extends StatelessWidget {
  final String buttonText;
  final VoidCallback callback;

  const ButtonWithText({Key? key, required this.buttonText,required this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap:
          callback,

        child: Container(
          height: MediaQuery.of(context).size.width/3-80,
          width: MediaQuery.of(context).size.width/3+30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Text(buttonText,style:TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(width: 10,),
              Container(
                height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black87,

                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(Icons.arrow_forward,size: 30,color: Colors.white,),
                  )))
            ],
          ),
        ),
      );

  }
}
