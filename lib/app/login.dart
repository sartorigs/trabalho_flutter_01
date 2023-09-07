import 'package:flutter/material.dart';
import 'package:trabalho_flutter_01/app/cadastro.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'E-Mail',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Senha',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Home(
                            title: 'Sobre',
                          )),
                );
              },
              child: const Text('Logar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Cadastro(
                            title: 'Cadastro',
                          )),
                );
              },
              child: const Text('Cadastro'),
            ),
          ],
        ),
      ),
    );
  }
}

/*

*/
