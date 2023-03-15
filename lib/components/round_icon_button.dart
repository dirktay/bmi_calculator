import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.onLongPress,
  }) : super(key: key);
  final IconData icon;
  final void Function()? onPressed;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      fillColor: kIncrementActionColor,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: Icon(icon),
    );
  }
}
