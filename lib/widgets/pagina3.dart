import 'package:flutter/material.dart';
import '../main.dart';

class NFProductsPage extends StatelessWidget {
  const NFProductsPage({super.key});
  static final GlobalKey<ScaffoldState> _scaffoldKeyProducts = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKeyProducts,
      drawer: const NFDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE600),
        title: const Text('CATÁLOGO', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(icon: const Icon(Icons.menu), onPressed: () => _scaffoldKeyProducts.currentState?.openDrawer()),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        children: [
          _item('Cedrat Boise', '2,990'),
          _item('Santal 33', '7,770'),
        ],
      ),
      bottomNavigationBar: const NFFooter(),
    );
  }

  Widget _item(String name, String price) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text('MXN \$$price'),
        ],
      ),
    );
  }
}