import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance; // Instância do FirebaseAuth - para usar os métodos

  void _cadastrarUsuario() async {
    try {
      // Tenta criar um novo usuário com o e-mail e senha fornecidos
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _senhaController.text.trim(),
      );

      // Verifica se o widget ainda está montado antes de usar o BuildContext 
      // Isso é importante para evitar erros de contexto após a navegação em uma execução assíncrona
      if (!mounted) return;

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Sucesso'),
          content: const Text('Usuário cadastrado com sucesso!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } catch (e) {

      if (!mounted) return; // Mesmo aqui

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Erro'),
          content: Text(e.toString()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'E-mail'),
            ),
            TextField(
              controller: _senhaController,
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _cadastrarUsuario,
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}