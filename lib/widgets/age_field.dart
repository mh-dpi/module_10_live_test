import 'package:flutter/material.dart';

TextFormField ageField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Age',
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter an age';
      }
      if (int.tryParse(value) == null) {
        return 'Please enter a valid number';
      }
      return null;
    },
  );
}
