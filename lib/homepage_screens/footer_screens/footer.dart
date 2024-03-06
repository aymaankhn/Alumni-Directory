import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const FooterButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).appBarTheme.backgroundColor,
      ),
    );
  }
}
