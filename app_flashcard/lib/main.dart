import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/tela_login.dart';
import 'screens/tela_home.dart';
import 'screens/tela_create_deck.dart';
import 'screens/tela_settings.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        final nome = state.uri.queryParameters['nome'] ?? 'Usuário';
        return TelaPrincipal(nomeUsuario: nome);
      },
    ),
    GoRoute(
      path: '/create_deck',
      builder: (context, state) => const CreateDeckPage(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Login com GoRouter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
    );
  }
}