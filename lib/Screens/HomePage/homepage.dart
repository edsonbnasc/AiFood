import 'package:aifood/Screens/Busca/search_screen.dart';
import 'package:aifood/Screens/HomePage/Profile/profile_screen.dart';
import 'package:aifood/Screens/Pedidos/pedidos.dart';
import 'package:aifood/Screens/TelaInicio/telainicio.dart';
import 'package:flutter/material.dart';
import 'package:aifood/CustomWidgets/menuInferior.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o proximo item
  void nextStation(int posicao) {
    setState(() {
      itemSelecionado = posicao;
    });
  }

  List<Widget> telas = const [
    TelaInicio(),
    TelaBusca(),
    TelaPedidos(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: telas.elementAt(itemSelecionado),
      ),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}
