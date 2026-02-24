import 'package:flutter/material.dart';
import '../main.dart';

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
            children: [
              Container(
                color: const Color(0xFFFFE600),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Text('NUESTRAS FRAGANCIAS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const Spacer(),
                    IconButton(icon: const Icon(Icons.menu), onPressed: () => _scaffoldKey.currentState?.openDrawer()),
                  ],
                ),
              ),
              // Grid de tarjetas de productos
              Padding(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  spacing: 10, runSpacing: 10,
                  children: [
                    _card('CABALLEROS', const Color(0xFF2E4D3E)),
                    _card('DAMAS', const Color(0xFF5D4037)),
                    _card('ARABES', Colors.black),
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

  Widget _card(String text, Color color) {
    return Container(
      width: 150, height: 100,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Center(child: Text(text, style: const TextStyle(color: Colors.white))),
    );
  }
}