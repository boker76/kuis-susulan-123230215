import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_controller.dart';
import '../widgets/product_card.dart';
import 'login_page.dart';
import 'product_detail_page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.find<ProductController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products List Page"),
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const LoginPage());
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          final product = productController.products[index];

          return ProductCard(
            product: product,
            onTapDetail: () {
              Get.to(() => ProductDetailPage(product: product));
            },
          );
        },
      ),
    );
  }
}
