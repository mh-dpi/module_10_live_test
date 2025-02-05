import 'package:flutter/material.dart';

import 'widgets/employee_form_widget.dart';

class AddEmployeeScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  AddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: EmployeeForm(formKey: _formKey),
      ),
    );
  }
}
