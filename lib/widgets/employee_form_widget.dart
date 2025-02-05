import 'package:flutter/material.dart';
import 'package:module_10_live_test/widgets/salary_field.dart';

import 'add_employee.dart';
import 'age_field.dart';
import 'name_field.dart';

class EmployeeForm extends StatelessWidget {
  const EmployeeForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nameField(),
          SizedBox(height: 16),
          ageField(),
          SizedBox(height: 16),
          salaryField(),
          SizedBox(height: 24),
          addEmployee(context, _formKey),
        ],
      ),
    );
  }
}
