import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_padding.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/gender_selection.dart';

class Gender extends StatelessWidget {
  const Gender({
    super.key,
    required this.selectedGender,
    required this.onGenderSelected,
  });

  final String selectedGender;
  final ValueChanged<String> onGenderSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h16,
      child: Row(
        children: [
          GenderSelection(
            gender: 'Male',
            isSelected: selectedGender == 'Male',
            onTap: () => onGenderSelected('Male'),
          ),
          const SizedBox(width: 16),
          GenderSelection(
            gender: 'Female',
            isSelected: selectedGender == 'Female',
            onTap: () => onGenderSelected('Female'),
          ),
        ],
      ),
    );
  }
}
