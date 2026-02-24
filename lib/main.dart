import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina%202.dart';
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pagina3.dart';
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

// --- WIDGETS COMPARTIDOS (Footer y Drawer) ---
// Los dejo aquí o puedes crear un archivo 'widgets.dart' e importarlo
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
        style: TextStyle(color: Color(0xFFFFE600), fontWeight: FontWeight.bold),
      ),
    );
  }
}

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
            child: Center(child: Text('Menú de Fragancias', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Categorías'),
            onTap: () => Navigator.pushNamed(context, '/segunda'),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Catálogo'),
            onTap: () => Navigator.pushNamed(context, '/tercera'),
          ),
        ],
      ),
    );
  }
}