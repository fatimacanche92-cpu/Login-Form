import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¡Bienvenido!'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            tooltip: 'Salir',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Has iniciado sesión correctamente.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
