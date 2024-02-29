import 'package:aifood/CustomWidgets/card.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration:  InputDecoration(
            hintText: 'Buscar em todo o aiFood',
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.all(4),
            prefixIcon: const Icon(Icons.search, color: Colors.red),
            filled: true,
            fillColor: Colors.grey[50]
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categorias', style: textNunitoBold(16)),
          ),
          Wrap(
            children: [
              card(185, 80, Colors.red, 'Mercado', "assets/mercado.png"),
              card(185, 80, Colors.orange, 'Farmácia', 'assets/farmacia.png'),
              card(185, 80, Color.fromARGB(235, 221, 140, 19), 'Bebidas', 'assets/bebidas.png'),
              card(185, 80, const Color.fromARGB(255, 1, 100, 4), 'Pet', 'assets/pet.png'),
              card(185, 80, Colors.deepPurple, 'Açai', 'assets/sorvete.png'),
              card(185, 80, Colors.orange, 'Bolo', 'assets/bolo.png'),
              card(185, 80, Colors.orange, 'Sorvete', 'assets/sorvete.png'),
              card(185, 80, Colors.pink, 'Café', 'assets/cafe.png'),
              card(185, 80, Colors.orange, 'Lanches', 'assets/lanches.png'),
              card(185, 80, Colors.orange, 'Pizza', 'assets/pizza.png'),
              card(185, 80, Colors.green, 'Espetinho', 'assets/carnes.png'),
              card(185, 80, Colors.orange, 'Peixe', 'assets/peixes.png'),
              card(185, 80, Colors.orange, 'Hot Dog', 'assets/hotDog.png'),
              card(185, 80, const Color.fromARGB(255, 206, 161, 93), 'Marmita', 'assets/marmita.png'),
              card(185, 80, Colors.green, 'Suco', 'assets/sucos.png'),
              card(185, 80, Colors.orange, 'Sopas', 'assets/sopas.png'),
              card(185, 80, Colors.orange, 'Tapioca', 'assets/tapioca.png'),
            ],
          )
        ],
      ),
    );
  }
}