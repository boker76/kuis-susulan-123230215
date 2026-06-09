import 'package:get/get.dart';

import '../models/product_model.dart';

class ProductController extends GetxController {
  final RxSet<int> favoriteProducts = <int>{}.obs;

  final List<ProductModel> products = [
    ProductModel(
      id: 1,
      name: "Wireless Mouse",
      price: "IDR 150000",
      rating: 4.5,
      category: "Electronics",
      description:
          "Wireless mouse ergonomis dengan koneksi 2.4GHz yang stabil dan baterai tahan lama. Cocok untuk penggunaan kantor maupun gaming ringan.",
      imageUrl:
          "https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=800",
    ),
    ProductModel(
      id: 2,
      name: "Mechanical Keyboard",
      price: "IDR 450000",
      rating: 4.7,
      category: "Electronics",
      description:
          "Keyboard mechanical dengan switch responsif, nyaman digunakan untuk mengetik, bekerja, dan bermain game.",
      imageUrl:
          "https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=800",
    ),
    ProductModel(
      id: 3,
      name: "Laptop Stand",
      price: "IDR 120000",
      rating: 4.3,
      category: "Accessories",
      description:
          "Stand laptop ringan dan kokoh untuk membantu posisi kerja lebih nyaman serta menjaga sirkulasi udara laptop.",
      imageUrl:
          "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=800",
    ),
    ProductModel(
      id: 4,
      name: "USB Type-C Hub",
      price: "IDR 250000",
      rating: 4.6,
      category: "Accessories",
      description:
          "USB Type-C Hub multifungsi dengan port HDMI, USB, dan card reader. Cocok untuk laptop modern.",
      imageUrl:
          "https://images.unsplash.com/photo-1625842268584-8f3296236761?w=800",
    ),
    ProductModel(
      id: 5,
      name: "Headset Bluetooth",
      price: "IDR 300000",
      rating: 4.4,
      category: "Audio",
      description:
          "Headset bluetooth dengan suara jernih, nyaman dipakai lama, dan cocok untuk meeting online maupun hiburan.",
      imageUrl:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800",
    ),
  ];

  bool isFavorite(int id) {
    return favoriteProducts.contains(id);
  }

  void toggleFavorite(int id) {
    if (favoriteProducts.contains(id)) {
      favoriteProducts.remove(id);
    } else {
      favoriteProducts.add(id);
    }
  }
}
