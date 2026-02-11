import 'package:flutter/material.dart';

Widget primaryButton(
  String buttonText,
  BuildContext context,
) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.secondary
    ),
    child: Center(
      child: Text(
        buttonText,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
    ),
  );
}
