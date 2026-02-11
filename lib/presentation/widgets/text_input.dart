import 'package:flutter/material.dart';

Widget customTextInput({required Color borderColor, required String hintText, required BuildContext context}){
  return Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.secondaryFixedDim,
          ),
          border: InputBorder.none
        ),
        maxLines: 1,
      ),
    );
}