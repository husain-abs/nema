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
    return TextFormField(
      style: TextStyle(fontSize: 18),
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(borderSide: BorderSide(),borderRadius: BorderRadius.all(Radius.circular(12))),
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


    );
  }
}
