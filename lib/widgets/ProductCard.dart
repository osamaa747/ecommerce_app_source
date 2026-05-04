import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../providers/shop_provider.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopProvider = Provider.of<ShopProvider>(context);
    final isFavorite = shopProvider.isFavorite(product);
    final isInCart = shopProvider.cartItems.contains(product);

    return Container(
      // أضفنا مرونة في التصميم ليتناسب مع العرض الجديد 220
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. تحديد نسبة ثابتة للصورة لضمان عدم ضغط النصوص بالأسفل
          Expanded(
            flex: 6, // تأخذ الصورة 60% من مساحة البطاقة
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.network(
                    product.imageUrl,
                    width: double.infinity,
                    height: double.infinity, // تملأ المساحة المخصصة لها تماماً
                    fit: BoxFit.cover, // تضمن عدم تشوه الصورة مهما اختلف العرض
                    errorBuilder: (context, error, stackTrace) => const Center(
                        child: Icon(Icons.broken_image, color: Colors.grey)),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: CircleAvatar(
                    radius: 18, // تصغير الحجم قليلاً ليتناسب مع العرض
                    backgroundColor: Colors.white.withOpacity(0.9),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.grey,
                        size: 20,
                      ),
                      onPressed: () => shopProvider.toggleFavorite(product),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 2. تفاصيل المنتج مع حماية من النصوص الطويلة
          Expanded(
            flex: 4, // تأخذ النصوص 40% من مساحة البطاقة
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // توزيع العناصر بانتظام
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 14, // تقليل حجم الخط قليلاً ليناسب العرض
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        // حماية السعر من التداخل مع الزر
                        child: Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () {
                          if (isInCart) {
                            shopProvider.removeFromCart(product);
                          } else {
                            shopProvider.addToCart(product);
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color:
                                isInCart ? Colors.redAccent : Colors.blueAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            isInCart
                                ? Icons.remove_shopping_cart
                                : Icons.add_shopping_cart,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
