import 'package:flutter/material.dart';
import 'login.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  void _mostrarInfosCadastro() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Informações de Cadastro'),
          content: Text(
              'Nome: ${_nomeController.text}\nEmail: ${_emailController.text}\nSenha: ${_senhaController.text}'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: _senhaController,
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _mostrarInfosCadastro,
              child: const Text('Cadastrar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Login(title: 'Login')));
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
