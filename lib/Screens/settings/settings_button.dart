import 'package:flutter/material.dart';

typedef OnTapFunction(bool value);


class SettingsButton extends StatefulWidget
{

  bool _on = false;
  String _buttonText;
  OnTapFunction _onTapFunction;

  SettingsButton.withBasicActivationFunc(bool on,String buttonText)
  {
    this._on = on;
    this._buttonText = buttonText;
  }

  SettingsButton.withCustomActivationFunc(this._on,this._buttonText,this._onTapFunction);




  State<StatefulWidget> createState() {


    return SettingsButtonState();
  }

}

class SettingsButtonState extends State<SettingsButton>
{

  OnTapFunction _activationFunction;

  @override
  Widget build(BuildContext context) {

    _activationFunction = widget._onTapFunction ?? _basicActivationFunction;

   return
     new Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      new Text(widget._buttonText),
      new Switch(
        value: (widget._on == null) ? true : widget._on,
        activeColor: Colors.green,
        activeTrackColor: Colors.green,
        onChanged:  _activationFunction

      )
    ]);
  }

  _basicActivationFunction(value)
  {
    setState(() {
      widget._on = !widget._on;
        });
  }

}