import 'package:flutter/material.dart';

class Label extends StatelessWidget
{
  final String labelText;
  final Text fieldValue;

  Label(this.labelText,this.fieldValue);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[Text(labelText + " : ") ,  fieldValue],


    );
  }

}