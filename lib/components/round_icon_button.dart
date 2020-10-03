import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPress;
  final IconData icon;
  RoundIconButton({@required this.onPress, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        child: Icon(icon),
        onPressed: onPress,
        constraints: BoxConstraints.tightFor(width: 56, height: 56),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
      ),
    );
  }
}
