import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shop_provider.dart';
import '../widgets/ProductCard.dart'; // تأكد من أن المسار صحيح

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<ShopProvider>(context);
    final categories = shop.categories;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // خلفية هادئة تبرز البطاقات
      appBar: AppBar(
        title: const Text(
          'متجري الذكي',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0, // إزالة الظل من شريط التطبيق ليكون عصرياً
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (ctx, index) {
          final category = categories[index];
          final categoryProducts = shop.getProductsByCategory(category);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      category,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5,
                      ),
                    ),
                    TextButton(
                      onPressed: () {}, // يمكنك الربط بصفحة التصنيفات لاحقاً
                      child: const Text('عرض الكل',
                          style: TextStyle(color: Colors.blueAccent)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:
                    320, // زدنا الارتفاع من 280 إلى 320 لإعطاء مساحة للنصوص والظلال
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryProducts.length,
                  itemBuilder: (ctx, i) => Container(
                    width:
                        220, // زدنا العرض من 180 إلى 220 لتبدو البطاقة "واقعية" وأكثر اتساعاً
                    margin: const EdgeInsets.only(
                        right: 16, bottom: 15), // مساحة إضافية للظل في الأسفل
                    child: ProductCard(product: categoryProducts[i]),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
