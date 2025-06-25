import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/gender.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/profile_header.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/profile_text_fields.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/update_button.dart';

class EditProfileViewBody extends StatefulWidget {
  const EditProfileViewBody({super.key});

  @override
  State<EditProfileViewBody> createState() => _EditProfileViewBodyState();
}

class _EditProfileViewBodyState extends State<EditProfileViewBody> {
  String selectedGender = 'Female';
  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _numberController = TextEditingController();
    final TextEditingController _birthdayController = TextEditingController();
    return Column(
      children: [
        ProfileHeader(),
        const SizedBox(height: 20),
        ProfileTextFields(
          nameController: _nameController,
          emailController: _emailController,
          numberController: _numberController,
          birthdayController: _birthdayController,
        ),
        const SizedBox(height: 10),
        Gender(
          selectedGender: selectedGender,
          onGenderSelected: (gender) {
            setState(() {
              selectedGender = gender;
            });
          },
        ),
        const SizedBox(height: 30),
        UpdateButton(),
      ],
    );
  }
}
