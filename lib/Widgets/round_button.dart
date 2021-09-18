import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  const RoundIconButton({required this.icon, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: const Color(0xFF4C4F5E),
      shape: const CircleBorder(),
      constraints: const BoxConstraints(minHeight: 50, minWidth: 50),
      elevation: 6,
      onPressed: null,
      child: Icon(icon),
    );
  }
}
