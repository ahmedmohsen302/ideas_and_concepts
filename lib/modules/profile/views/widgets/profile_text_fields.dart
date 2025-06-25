import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/widgets/build_text_field.dart';

class ProfileTextFields extends StatelessWidget {
  const ProfileTextFields({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.numberController,
    required this.birthdayController,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController numberController;
  final TextEditingController birthdayController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildTextField(
          controller: nameController,
          hintText: 'Full name',
          keyboardType: TextInputType.name,
          title: 'Full Name',
        ),
        BuildTextField(
          controller: emailController,
          hintText: 'Email',
          keyboardType: TextInputType.emailAddress,
          title: 'Email',
        ),
        BuildTextField(
          controller: numberController,
          hintText: 'Mobile Number',
          keyboardType: TextInputType.number,
          title: 'Mobile Number',
        ),
        BuildTextField(
          controller: birthdayController,
          hintText: 'Date of birth',
          keyboardType: TextInputType.datetime,
          title: 'Date Of Birth',
        ),
      ],
    );
  }
}
