import 'package:flutter/material.dart';
import 'widgets/pagina1.dart';
import 'widgets/pagina2.dart';
import 'widgets/pagina3.dart';

void main() => runApp(const NFApp());

class NFApp extends StatelessWidget {
  const NFApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nuestras Fragancias',
      initialRoute: '/',
      routes: {
        '/': (context) => const NFLogoPage(),
        '/segunda': (context) => const NFHomePage(),
        '/tercera': (context) => const NFProductsPage(),
      },
    );
  }
}

// --- WIDGET DE PIE DE PÁGINA (FOOTER) ---
class NFFooter extends StatelessWidget {
  const NFFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: const Text(
        'Damian Dominguez 6-I',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFFFFE600),
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}

// --- WIDGET PARA EL MENÚ LATERAL ---
class NFDrawer extends StatelessWidget {
  const NFDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFFFE600)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text('NF', style: TextStyle(color: Colors.yellow)),
                ),
                SizedBox(height: 10),
                Text(
                  'Menú de Fragancias',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio / Logo'),
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/',
              (route) => false,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Categorías'),
            onTap: () => Navigator.pushNamed(context, '/segunda'),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Catálogo Completo'),
            onTap: () => Navigator.pushNamed(context, '/tercera'),
          ),
        ],
      ),
    );
  }
}
