import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shop_provider.dart';
// 1. التأكد من كتابة اسم الملف بحروف صغيرة كما هو في مجلد widgets
import '../widgets/productcard.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<ShopProvider>(context);
    final favItems = shop.favoriteItems;

    return Scaffold(
      backgroundColor:
          const Color(0xFFF8F9FA), // خلفية متناسقة مع التصميم الجديد
      appBar: AppBar(
        title: const Text(
          'المفضلة',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: favItems.isEmpty
          ? const Center(
              child: Text(
                'لا توجد عناصر في المفضلة بعد!',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:
                    0.70, // تعديل بسيط ليتناسب مع أبعاد البطاقة الجديدة
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: favItems.length,
              // 2. التعديل الجوهري: استدعاء ProductCard وليس ProductItem
              itemBuilder: (ctx, i) => ProductCard(product: favItems[i]),
            ),
    );
  }
}
