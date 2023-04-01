import 'package:flutter/material.dart';

AppBar1() {
  return AppBar(
    backgroundColor: Colors.teal[900],
    leading: IconButton(
      icon: Icon(Icons.person_outline),
      onPressed: () {
        // Adicione aqui a ação desejada
      },
    ),
    title: Text('Metas 2023'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Adicione aqui a ação desejada
        },
      ),
    ],
  );
}