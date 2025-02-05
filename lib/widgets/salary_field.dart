import 'package:flutter/material.dart';

TextFormField salaryField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Salary',
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter a salary';
      }
      if (double.tryParse(value) == null) {
        return 'Please enter a valid amount';
      }
      return null;
    },
  );
}
