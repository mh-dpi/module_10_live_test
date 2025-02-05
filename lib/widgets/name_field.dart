import 'package:flutter/material.dart';

TextFormField nameField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Name',
      border: OutlineInputBorder(),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter a name';
      }
      return null;
    },
  );
}
