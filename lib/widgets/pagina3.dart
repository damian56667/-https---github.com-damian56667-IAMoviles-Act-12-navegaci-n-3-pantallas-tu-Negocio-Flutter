import 'package:flutter/material.dart';
import '../main.dart';

class NFProductsPage extends StatelessWidget {
  const NFProductsPage({super.key});
  static final GlobalKey<ScaffoldState> _scaffoldKeyProducts =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKeyProducts,
      backgroundColor: Colors.white,
      drawer: const NFDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE600),
        elevation: 0,
        title: const Text(
          'CATÁLOGO',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => _scaffoldKeyProducts.currentState?.openDrawer(),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: Divider()),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.65,
                ),
                delegate: SliverChildListDelegate([
                  _buildProductItem(
                    'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-10/refs/heads/main/i1.webp',
                    'Cedrat Boise',
                    '2,990',
                  ),
                  _buildProductItem(
                    'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-10/refs/heads/main/m2.jpg',
                    'Santal 33',
                    '7,770',
                  ),
                  _buildProductItem(
                    'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-10/refs/heads/main/m3.webp',
                    'Erba Pura',
                    '4,500',
                  ),
                  _buildProductItem(
                    'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-10/refs/heads/main/m4.webp',
                    'Layton',
                    '9,213',
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NFFooter(), // Tu nombre Damian Dominguez
    );
  }

  Widget _buildProductItem(String img, String name, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(
          'MXN \$$price',
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
