import 'package:flutter/material.dart';
import '../models/product.dart';

class ShopProvider with ChangeNotifier {
  final List<Product> _products = [
    // --- فئة الإلكترونيات (Electronics) - 8 منتجات ---
    Product(
      id: 'e1',
      title: 'iPhone 15 Pro',
      description: 'The latest iPhone with titanium design.',
      price: 999.99,
      imageUrl:
          'https://images.unsplash.com/photo-1678911820864-e2c567c655d7?q=80&w=1000',
      category: 'Electronics',
    ),
    Product(
      id: 'e2',
      title: 'MacBook Air M2',
      description: 'Supercharged by M2 chip, remarkably thin.',
      price: 1199.00,
      imageUrl:
          'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?q=80&w=400',
      category: 'Electronics',
    ),
    Product(
      id: 'e3',
      title: 'Sony WH-1000XM5',
      description: 'Industry leading noise canceling headphones.',
      price: 349.99,
      imageUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=400',
      category: 'Electronics',
    ),
    Product(
      id: 'e4',
      title: 'Apple Watch Series 9',
      description: 'Smarter, brighter, mightier.',
      price: 399.00,
      imageUrl:
          'https://images.unsplash.com/photo-1546868871-7041f2a55e12?q=80&w=400',
      category: 'Electronics',
    ),
    Product(
      id: 'e5',
      title: 'iPad Pro M2',
      description: 'Astonishing performance and advanced displays.',
      price: 799.00,
      imageUrl:
          'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?q=80&w=400',
      category: 'Electronics',
    ),
    Product(
      id: 'e6',
      title: 'Nintendo Switch OLED',
      description: 'Vibrant 7-inch OLED screen.',
      price: 349.00,
      imageUrl:
          'https://images.unsplash.com/photo-1578303512597-81e6cc155b3e?q=80&w=400',
      category: 'Electronics',
    ),
    Product(
      id: 'e7',
      title: 'Canon EOS R5',
      description: 'Professional full-frame mirrorless camera.',
      price: 3899.00,
      imageUrl:
          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=400',
      category: 'Electronics',
    ),
    Product(
      id: 'e8',
      title: 'Samsung S23 Ultra',
      description: 'The ultimate Android smartphone experience.',
      price: 1199.99,
      imageUrl:
          'https://images.unsplash.com/photo-1678911820864-e2c567c655d7?q=80&w=400',
      category: 'Electronics',
    ),

    // --- فئة الأزياء (Fashion) - 8 منتجات ---
    Product(
      id: 'f1',
      title: 'Classic White T-Shirt',
      description: '100% organic cotton, comfortable fit.',
      price: 25.00,
      imageUrl:
          'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?q=80&w=400',
      category: 'Fashion',
    ),
    Product(
      id: 'f2',
      title: 'Leather Jacket',
      description: 'Premium quality leather for a bold look.',
      price: 150.00,
      imageUrl:
          'https://images.unsplash.com/photo-1551028719-00167b16eac5?q=80&w=400',
      category: 'Fashion',
    ),
    Product(
      id: 'f3',
      title: 'Blue Denim Jeans',
      description: 'Comfortable slim fit denim.',
      price: 55.00,
      imageUrl:
          'https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=400',
      category: 'Fashion',
    ),
    Product(
      id: 'f4',
      title: 'Canvas Sneakers',
      description: 'Perfect for everyday casual wear.',
      price: 45.00,
      imageUrl:
          'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?q=80&w=400',
      category: 'Fashion',
    ),
    Product(
      id: 'f5',
      title: 'Summer Floral Dress',
      description: 'Lightweight and stylish for summer.',
      price: 65.00,
      imageUrl:
          'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?q=80&w=1000',
      category: 'Fashion',
    ),
    Product(
      id: 'f6',
      title: 'Formal Black Suit',
      description: 'Slim fit wool blend suit.',
      price: 299.00,
      imageUrl:
          'https://images.unsplash.com/photo-1594932224828-b4b059b6f6f9?q=80&w=400',
      category: 'Fashion',
    ),
    Product(
      id: 'f7',
      title: 'Winter Puffer Jacket',
      description: 'Warm and water-resistant.',
      price: 120.00,
      imageUrl:
          'https://images.unsplash.com/photo-1544022613-e87ca75a784a?q=80&w=400',
      category: 'Fashion',
    ),
    Product(
      id: 'f8',
      title: 'Leather Handbag',
      description: 'Elegant design for daily essentials.',
      price: 85.00,
      imageUrl:
          'https://images.unsplash.com/photo-1584917865442-de89df76afd3?q=80&w=400',
      category: 'Fashion',
    ),

    // --- فئة الكتب (Books) - 8 منتجات ---
    Product(
      id: 'b1',
      title: 'The Alchemist',
      description: 'A global phenomenon about following your dreams.',
      price: 15.99,
      imageUrl:
          'https://images.unsplash.com/photo-1544947950-fa07a98d237f?q=80&w=400',
      category: 'Books',
    ),
    Product(
      id: 'b2',
      title: 'Atomic Habits',
      description: 'An easy way to build good habits.',
      price: 18.50,
      imageUrl:
          'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?q=80&w=400',
      category: 'Books',
    ),
    Product(
      id: 'b3',
      title: 'Thinking Fast and Slow',
      description: 'Explaining how our minds work.',
      price: 22.00,
      imageUrl:
          'https://images.unsplash.com/photo-1532012197367-263e98c5bb51?q=80&w=400',
      category: 'Books',
    ),
    Product(
      id: 'b4',
      title: 'Digital Minimalism',
      description: 'Choosing a focused life in a noisy world.',
      price: 20.00,
      imageUrl:
          'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?q=80&w=400',
      category: 'Books',
    ),
    Product(
      id: 'b5',
      title: 'Deep Work',
      description: 'Rules for focused success.',
      price: 17.00,
      imageUrl:
          'https://images.unsplash.com/photo-1512820790803-83ca734da794?q=80&w=400',
      category: 'Books',
    ),
    Product(
      id: 'b6',
      title: 'Sapiens',
      description: 'A brief history of humankind.',
      price: 24.50,
      imageUrl:
          'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?q=80&w=400',
      category: 'Books',
    ),
    Product(
      id: 'b7',
      title: 'The Great Gatsby',
      description: 'A classic story of the American dream.',
      price: 12.99,
      imageUrl:
          'https://images.unsplash.com/photo-1543004622-50f0f3539857?q=80&w=400',
      category: 'Books',
    ),
    Product(
      id: 'b8',
      title: 'Zero to One',
      description: 'Notes on startups, or how to build the future.',
      price: 21.00,
      imageUrl:
          'https://images.unsplash.com/photo-1512820790803-83ca734da794?q=80&w=400',
      category: 'Books',
    ),
  ];

  final List<Product> _cartItems = [];
  final List<Product> _favoriteItems = [];

  List<Product> get products => [..._products];
  List<Product> get cartItems => [..._cartItems];
  List<Product> get favoriteItems => [..._favoriteItems];

  List<String> get categories {
    return _products.map((p) => p.category).toSet().toList();
  }

  List<Product> getProductsByCategory(String category) {
    return _products.where((p) => p.category == category).toList();
  }

  void addToCart(Product product) {
    if (!_cartItems.contains(product)) {
      _cartItems.add(product);
      notifyListeners();
    }
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void toggleFavorite(Product product) {
    if (_favoriteItems.contains(product)) {
      _favoriteItems.remove(product);
    } else {
      _favoriteItems.add(product);
    }
    notifyListeners();
  }

  bool isFavorite(Product product) {
    return _favoriteItems.contains(product);
  }

  double get totalCartPrice {
    return _cartItems.fold(0.0, (sum, item) => sum + item.price);
  }
}
