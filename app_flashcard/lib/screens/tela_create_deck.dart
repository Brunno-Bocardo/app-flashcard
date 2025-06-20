import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/bottom_navigation_bar.dart';

class CreateDeckPage extends StatelessWidget {
  const CreateDeckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Deck'),
        automaticallyImplyLeading: true, // Permite voltar para a página anterior
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('CREATE DECK'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (idx) {
          if (idx == 0) {
            context.go('/home');
          } else if (idx == 2) {
            context.go('/settings');
          }
        },
      ),
    );
  }
}