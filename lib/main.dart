import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/modules/orders/views/orders_view.dart';
import 'package:ideas_and_concepts/modules/profile/views/edit_profile_view.dart';
import 'package:ideas_and_concepts/modules/profile/views/profile_view.dart';
import 'package:ideas_and_concepts/routes/app_routes.dart';

void main() {
  runApp(const IdeasAndConcepts());
}

class IdeasAndConcepts extends StatelessWidget {
  const IdeasAndConcepts({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.profile,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.white),
      ),
    );
  }
}
