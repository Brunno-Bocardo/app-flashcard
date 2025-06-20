import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/bottom_navigation_bar.dart';

class TelaPrincipal extends StatefulWidget {
  final String nomeUsuario;
  const TelaPrincipal({super.key, required this.nomeUsuario});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-vindo :D'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('HOME'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (idx) {
          setState(() {
            if (idx == 1) {
              context.go('/create_deck');
            } else if (idx == 2) {
              context.go('/settings');
            }
          });
        },
      ),
    );
  }
}