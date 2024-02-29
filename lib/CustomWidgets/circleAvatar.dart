import 'package:flutter/material.dart';

//Widget que retorna uma imagem circular
Widget circleAvatar(String img) {
  return const SizedBox(
    width: 50,
    height: 50,
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 50,
        foregroundImage:  NetworkImage('assets/icone.png'),
      ),
    ),
  );
}
