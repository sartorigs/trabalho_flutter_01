import 'package:flutter/material.dart';
import 'package:trabalho_flutter_01/app/calculadora.dart';
import 'package:trabalho_flutter_01/app/login.dart';

import '../home.dart';

Widget Menu(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Home(title: "BEM VINDO")),
            );
          },
        ),
        ListTile(
          title: const Text('Calculadora'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Calculadora(
                        title: 'Calculadora',
                      )),
            );
          },
        ),
        ListTile(
          title: const Text('Sair'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Login(
                        title: "Login",
                      )),
            );
          },
        ),
      ],
    ),
  );
}
