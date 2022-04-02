import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  const CustomInput({Key? key,this.function,this.hintText, this.labelText, this.errorText, this.keyboardType, this.controller, this.iconData}) : super(key: key);
  final  Function? function;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final Widget? iconData;
  final TextInputType ? keyboardType;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey,width: 2)
      ),
      child: Center(
        child: TextFormField(
          style: TextStyle(fontSize: 18),
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            fillColor: Theme.of(context).primaryColor,

          ),
          textInputAction: TextInputAction.next,
          validator: (value){
            if(value == '' || value == null){
              return errorText;
            }
          },
          keyboardType: keyboardType,
          onChanged: (value)=>function!(value),
          controller: controller,


        ),
      ),
    );
  }
}
