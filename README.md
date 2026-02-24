# myapp
<img width="1229" height="719" alt="image" src="https://github.com/user-attachments/assets/fcd7dc96-db76-4753-a635-23c3dff1f0c8" />
<img width="1209" height="806" alt="image" src="https://github.com/user-attachments/assets/2330a1bd-a290-4837-858d-e90bc2b98cee" />
<img width="1222" height="798" alt="image" src="https://github.com/user-attachments/assets/e61db76a-7700-4d58-bb49-2462900d0df2" />
<img width="854" height="612" alt="image" src="https://github.com/user-attachments/assets/0c9be954-57a5-40d0-8fab-7c060f0147fe" />
<img width="389" height="679" alt="image" src="https://github.com/user-attachments/assets/20ddd2bf-9c7d-40e8-b2f1-f5814c0b8000" />
<img width="376" height="685" alt="image" src="https://github.com/user-attachments/assets/4383eebd-3374-461c-b065-470613f83c7e" />
<img width="394" height="675" alt="image" src="https://github.com/user-attachments/assets/e7921432-39e7-4fc9-9a2d-946e9bb5970f" />

A new Flutter project.
## promt 
sigue las instrucciones de este prompt pero cambia los colores y en vez que de pongas las pantallas quiero que la segunda pantalla sea esta import 'package:flutter/material.dart';

void main() => runApp(const NFApp());

class NFApp extends StatelessWidget {
  const NFApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NFHomePage(),
    );
  }
}

class NFHomePage extends StatelessWidget {
  const NFHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título con fondo AMARILLO, logo, carrito y menú de 3 rayas
              Container(
                width: double.infinity,
                color: const Color(0xFFFFE600), // Fondo amarillo
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Logo (mini imagen)
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text('NF', 
                          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ),
                    const SizedBox(width: 10),
                    
                    // Título en dos líneas - CON TILDE
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NUESTRAS', 
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1)),
                        Text('FRAGANCÍAS', 
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1)),
                      ],
                    ),
                    
                    const Spacer(), // Empuja los iconos a la derecha
                    
                    // Icono del carrito
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 24),
                    ),
                    
                    const SizedBox(width: 8), // Espacio entre iconos
                    
                    // Icono de 3 rayas (menú)
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.menu, color: Colors.black, size: 24),
                    ),
                  ],
                ),
              ),

              // Buscador
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar perfumes ...',
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Categorías horizontales
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    _CatText('Caballeros'),
                    _CatText('Damas'),
                    _CatText('Perfumes Arabes'),
                    _CatText('Stella Dustin'),
                    _CatText('Perfumeria Nicho'),
                    _CatText('Mayoreo'),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // DISEÑO DE 3 COLUMNAS
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // COLUMNA IZQUIERDA
                    Expanded(
                      child: Column(
                        children: [
                          ProductCard(title: 'CABALLEROS', color: const Color(0xFF2E4D3E), height: 150, showPrice: true),
                          const SizedBox(height: 10),
                          ProductCard(title: 'DAMAS', color: const Color(0xFF5D4037), height: 150, showPrice: true),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    
                    // COLUMNA CENTRAL (más grande)
                    Expanded(
                      child: ProductCard(title: 'ARABES', color: Colors.black, height: 310, showPrice: true),
                    ),
                    const SizedBox(width: 10),
                    
                    // COLUMNA DERECHA
                    Expanded(
                      child: Column(
                        children: [
                          ProductCard(title: 'NICHO', color: const Color(0xFF6D2121), height: 150, showPrice: true),
                          const SizedBox(height: 10),
                          ProductCard(title: 'STELLA', color: const Color(0xFF1A3A4A), height: 150, showPrice: true),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Sección "Recién llegados" - VACÍA
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('', style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Subtítulo - VACÍO
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('', style: TextStyle(fontSize: 14, color: Colors.grey)),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final Color color;
  final double height;
  final bool showPrice;

  const ProductCard({
    super.key, 
    required this.title, 
    required this.color, 
    required this.height,
    this.showPrice = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          // Precio "Desde $45" en la esquina superior izquierda
          if (showPrice)
            const Positioned(
              top: 10,
              left: 10,
              child: Text('Desde \$45', 
                style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w300)),
            ),
          
          // Título centrado
          Center(
            child: Text(title, 
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
          ),
          
          // Botón Comprar en la parte inferior
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: const BoxDecoration(
                color: Color(0xFFFFE600),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              ),
              child: const Text('Comprar', 
                textAlign: TextAlign.center, 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
            ),
          ),
        ],
      ),
    );
  }
}

class _CatText extends StatelessWidget {
  final String text;
  const _CatText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15), 
      child: Text(text, 
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
    );
  }
}y la tercera pantalla quiero que sea esta import 'package:flutter/material.dart';

void main() => runApp(const NFApp());

class NFApp extends StatelessWidget {
  const NFApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const NFProductsPage(),
    );
  }
}

class NFProductsPage extends StatelessWidget {
  const NFProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  _buildCategoriesSection(), // Aquí aplicamos el Wrap para evitar el error
                  const Divider(thickness: 1, height: 1),
                  _buildFilterSection(),
                  const Divider(thickness: 1, height: 1),
                ],
              ),
            ),
            
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,          
                  mainAxisSpacing: 20,       
                  crossAxisSpacing: 16,      
                  childAspectRatio: 0.65,    
                ),
                delegate: SliverChildListDelegate([
                  const _ProductCard(
                    imageUrl: 'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-10/refs/heads/main/i1.webp',
                    gender: 'Unisex',
                    price: '2,990',
                    discount: '-7%',
                    originalPrice: '3,200',
                    name: 'Cedrat Boise',
                    brand: 'Mancera',
                  ),
                  const _ProductCard(
                    imageUrl: 'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-10/refs/heads/main/m2.jpg',
                    gender: 'Unisex',
                    price: '7,770',
                    name: 'Santal 33',
                    brand: 'Le Labo',
                  ),
                  const _ProductCard(
                    imageUrl: 'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-10/refs/heads/main/m3.webp',
                    gender: 'Unisex',
                    price: '4,500', 
                    name: 'Erba Pura',
                    brand: 'Xerjoff',
                  ),
                  const _ProductCard(
                    imageUrl: 'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-10/refs/heads/main/m4.webp',
                    gender: 'Caballeros',
                    price: '9,213',
                    discount: '-12%',
                    originalPrice: '10,500',
                    name: 'Layton',
                    brand: 'Parfums de Marly',
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      color: const Color(0xFFFFE600),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          Container(
            width: 40, height: 40,
            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
            child: const Center(child: Text('NF', style: TextStyle(color: Color(0xFFFFE600), fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 12),
          const Text('NUESTRAS FRAGANCIAS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
          const Spacer(),
          const Icon(Icons.shopping_cart_outlined),
          const SizedBox(width: 10),
          const Icon(Icons.menu),
        ],
      ),
    );
  }

  // --- SECCIÓN DE CATEGORÍAS CORREGIDA CON WRAP ---
  Widget _buildCategoriesSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 20.0, // Espacio horizontal entre los textos
        runSpacing: 10.0, // Espacio vertical si el texto salta a la siguiente línea
        children: [
          Text('Perfumeria Nicho', 
            style: TextStyle(color: Colors.brown.shade400, fontSize: 16, fontWeight: FontWeight.w500)),
          const Text('Caballeros', 
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
          const Text('Damas', 
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
          const Text('Perfumes Arabes', 
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
          const Text('Stella Dustin', 
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
          const Text('Decants y Sets', 
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
          const Text('Mayoreo', 
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildFilterSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          const Text('Filtrar', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 10),
          Chip(
            label: const Text('Perfumería Nicho', style: TextStyle(fontSize: 12)),
            onDeleted: () {},
            deleteIcon: const Icon(Icons.close, size: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.grey.shade100,
          ),
        ],
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String imageUrl;
  final String gender;
  final String price;
  final String? discount;
  final String? originalPrice;
  final String name;
  final String brand;

  const _ProductCard({
    required this.imageUrl,
    required this.gender,
    required this.price,
    this.discount,
    this.originalPrice,
    required this.name,
    required this.brand,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                if (discount != null)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(4)),
                      child: Text(discount!, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(gender.toUpperCase(), style: const TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14), overflow: TextOverflow.ellipsis),
        Text(brand, style: const TextStyle(fontSize: 12, color: Colors.black54)),
        const SizedBox(height: 4),
        Text('MXN \$$price', style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14, color: Colors.black)),
        if (originalPrice != null)
          Text('MXN \$$originalPrice', 
            style: const TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough, fontSize: 11)),
      ],
    );
  }
} y la primera va a ser un logo, pero aqui te pongo el promt  Lenguaje Dart flutter: Nivel principiante; ejemplo de navegación entre 3 paginas utilizando rutas nombradas, desde main llamar a pagina 1, En la pagina mostrar en appbar el "titulo" Inicio color blanco con fondo azyil y en body, en una columna mostrar texto (Pagina inicial) mas un botón para ir a la segunda pagina, en la segunda pagina mostrar el appbar "segunda pagina" coloir negro fondo verde y en body mostrar una imagen desde la red mas un botón para ir a la tercera pagina, en la tercera pagina en appbar mostrar titulo "Tercera pagina" color rosa con fondo azul marino y en body mostrar un container de 200 por 200 azul claro debe ser atractivo fácil navegación y mostrar todo el código en un solo archivo. This project is a starting point for a Flutter application.
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
