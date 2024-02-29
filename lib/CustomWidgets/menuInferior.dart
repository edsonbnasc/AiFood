import 'package:flutter/material.dart';


BottomNavigationBar bottomNavigationBar(int itemSelecionado, nextStation){
  return BottomNavigationBar(
        currentIndex: itemSelecionado,
        onTap: nextStation,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          bottomNavigationBarItem(Icons.home, 'Home'),
          bottomNavigationBarItem(Icons.search, 'Busca'),
          bottomNavigationBarItem(Icons.shopping_cart, 'Pedidos'),
          bottomNavigationBarItem(Icons.person, 'Perfil')
        ],
  );
}

//função que retorna um bottonNavigator itens
BottomNavigationBarItem bottomNavigationBarItem(IconData icon, String texto) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: Colors.black,
    ),
    label: texto
  );
}