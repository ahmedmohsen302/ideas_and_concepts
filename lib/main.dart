import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/modules/profile/views/profile_view.dart';

void main() {
  runApp(const IdeasAndConcepts());
}

class IdeasAndConcepts extends StatelessWidget {
  const IdeasAndConcepts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfileView());
  }
}
