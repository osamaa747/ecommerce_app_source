import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shop_provider.dart';
// 1. تصحيح المسار ليكون بحروف صغيرة كما هو في مجلد widgets
import '../widgets/productcard.dart';

class CategoryProductsScreen extends StatelessWidget {
  final String category;

  const CategoryProductsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<ShopProvider>(context);
    final products = shop.getProductsByCategory(category);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // لون خلفية مريح للعين
      appBar: AppBar(
        title: Text(
          category,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.black), // تلوين سهم العودة بالأسود
        centerTitle: true,
      ),
      body: products.isEmpty
          ? const Center(child: Text('لا توجد منتجات في هذا القسم حالياً'))
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:
                    0.72, // ضبط النسبة لتناسب التصميم الجديد للبطاقة
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: products.length,
              // 2. التعديل الجوهري: استبدال ProductItem بـ ProductCard
              itemBuilder: (ctx, i) => ProductCard(product: products[i]),
            ),
    );
  }
}
