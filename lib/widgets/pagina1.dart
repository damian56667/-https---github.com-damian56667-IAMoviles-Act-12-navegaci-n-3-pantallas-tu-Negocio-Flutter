import 'package:flutter/material.dart';
import '../main.dart'; // Importamos para usar el Footer

class NFLogoPage extends StatelessWidget {
  const NFLogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/segunda'),
              child: Image.network(
                'https://raw.githubusercontent.com/damian56667/IAMoviles-Act-11-Navegaci-n-entre-3-pantallas-/refs/heads/main/logo-removebg-preview.png',
                width: 280,
              ),
            ),
            const SizedBox(height: 50),
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFFFFE600), width: 2),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text('ENTRAR', style: TextStyle(color: Color(0xFFFFE600))),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NFFooter(),
    );
  }
}