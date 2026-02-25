import 'package:flutter/material.dart';
import '../main.dart'; // Importante para el Footer y Drawer

class NFHomePage extends StatelessWidget {
  const NFHomePage({super.key});
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: const NFDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER AMARILLO
              Container(
                width: double.infinity,
                color: const Color(0xFFFFE600),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 40, height: 40,
                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                      child: const Center(child: Text('NF', style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold))),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NUESTRAS', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1)),
                        Text('FRAGANCÍAS', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1)),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined),
                      onPressed: () => Navigator.pushNamed(context, '/tercera'),
                    ),
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                    ),
                  ],
                ),
              ),
              // BUSCADOR
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar perfumes ...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                    filled: true, fillColor: Colors.grey.shade100,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // DISEÑO DE 3 COLUMNAS
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Columna 1
                    Expanded(
                      child: Column(
                        children: [
                          ProductCard(title: 'CABALLEROS', color: const Color(0xFF2E4D3E), height: 150),
                          const SizedBox(height: 10),
                          ProductCard(title: 'DAMAS', color: const Color(0xFF5D4037), height: 150),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    // Columna 2 (Centro)
                    const Expanded(child: ProductCard(title: 'ARABES', color: Colors.black, height: 310)),
                    const SizedBox(width: 10),
                    // Columna 3
                    Expanded(
                      child: Column(
                        children: [
                          ProductCard(title: 'NICHO', color: const Color(0xFF6D2121), height: 150),
                          const SizedBox(height: 10),
                          ProductCard(title: 'STELLA', color: const Color(0xFF1A3A4A), height: 150),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NFFooter(),
    );
  }
}

// Widget de apoyo para los cuadros
class ProductCard extends StatelessWidget {
  final String title; final Color color; final double height;
  const ProductCard({super.key, required this.title, required this.color, required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Center(child: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12))),
    );
  }
}
