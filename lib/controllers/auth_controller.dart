import 'package:get/get.dart';

import '../views/product_list_page.dart';

class AuthController extends GetxController {
  final String nim = "123230215";

  void login({
    required String username,
    required String password,
  }) {
    if (username == nim && password == "kuis_$nim") {
      Get.snackbar(
        "Berhasil",
        "Login berhasil!",
        snackPosition: SnackPosition.BOTTOM,
      );

      Future.delayed(const Duration(milliseconds: 700), () {
        Get.off(() => const ProductListPage());
      });
    } else {
      Get.snackbar(
        "Gagal",
        "Login gagal!",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
