import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/register_screen.dart';

Widget Menu(BuildContext context) {
  String profileImage = 'assets/imagens-moedas/brl.png';

  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.green),
          margin: EdgeInsets.only(bottom: 10.0),
          currentAccountPicture: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
              image: const DecorationImage(
                image: NetworkImage(
                    'https://pbs.twimg.com/media/CqAXwi-WgAA4NuW.jpg'),
                fit: BoxFit.cover,
              ),),
          ),
          accountName: new Container(
              child: Text(
                'Mateus dos Santos',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          accountEmail: new Container(
              child: Text(
                'dossantosmateus@gmail.com',
                style: TextStyle(color: Colors.white),
              )),
        ),
        ListTile(
          title: const Text('Página Inicial'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'Página Inicial'))
            );
          },
        ),
        ListTile(
          title: const Text('Cadastrar'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RegisterPage(title: 'Cadastro'))
            );
          },
        )
      ],
    ),
  );
}