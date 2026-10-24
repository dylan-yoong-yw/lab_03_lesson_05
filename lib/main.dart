import 'package:flutter/material.dart';

void main() {
  runApp(const BrewAndBeanApp());
}

class BrewAndBeanApp extends StatelessWidget {
  const BrewAndBeanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brew & Bean',
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EC),

      appBar: AppBar(
        backgroundColor: const Color(0xFF3D261C),
        foregroundColor: Colors.white,
        title: const Row(
          children: [
            Icon(Icons.coffee),
            SizedBox(width: 10),
            Text('Brew & Bean'),
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9DBCB),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Brew & Bean',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3D261C),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Freshly brewed, made for you.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF645144),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  'Our Coffee Menu',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3D261C),
                  ),
                ),

                const SizedBox(height: 12),

                const MenuCard(
                  imagePath: 'assets/images/latte.jpg',
                  name: 'Caffè Latte',
                  description: 'Smooth espresso with creamy steamed milk.',
                  price: 'RM 12.90',
                ),

                const MenuCard(
                  imagePath: 'assets/images/cappuccino.jpg',
                  name: 'Cappuccino',
                  description: 'Rich espresso topped with light, foamy milk.',
                  price: 'RM 11.90',
                ),

                const MenuCard(
                  imagePath: 'assets/images/iced_mocha.jpg',
                  name: 'Iced Mocha',
                  description: 'Espresso, milk and chocolate served chilled.',
                  price: 'RM 14.90',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
  });

  final String imagePath;
  final String name;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 96,
                height: 96,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3D261C),
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF716153),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8A5433),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
