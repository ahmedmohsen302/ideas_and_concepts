import 'package:get/get.dart';
import 'package:ideas_and_concepts/modules/orders/views/orders_view.dart';
import 'package:ideas_and_concepts/modules/profile/views/edit_profile_view.dart';
import 'package:ideas_and_concepts/modules/profile/views/profile_view.dart';

class AppRoutes {
  static const String profile = '/ProfileView';
  static const String editProfile = '/EditProfileView';
  static const String orders = '/OrderView';

  static final routes = [
    GetPage(name: profile, page: () => const ProfileView()),
    GetPage(name: editProfile, page: () => const EditProfileView()),
    GetPage(name: orders, page: () => const OrdersView()),
  ];
}
