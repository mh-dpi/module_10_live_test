import 'package:flutter/material.dart';

Center addEmployee(BuildContext context, GlobalKey<FormState> formKey) {
  return Center(
    child: ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Employee added successfully')),
          );
        }
      },
      child: Text('Add Employee'),
    ),
  );
}
