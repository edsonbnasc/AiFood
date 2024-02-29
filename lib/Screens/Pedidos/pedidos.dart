import 'package:aifood/CustomWidgets/card.dart';
import 'package:aifood/CustomWidgets/listTile.dart';
import 'package:aifood/CustomWidgets/listTileCustom.dart';
import 'package:flutter/material.dart';

class TelaPedidos extends StatelessWidget {
  const TelaPedidos({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //   // title: TextFormField(
      //   //   decoration:  InputDecoration(
      //   //     hintText: 'Buscar pedidos',
      //   //     border: const OutlineInputBorder(),
      //   //     contentPadding: const EdgeInsets.all(4),
      //   //     prefixIcon: const Icon(Icons.search, color: Colors.red),
      //   //     filled: true,
      //   //     fillColor: Colors.grey[50]
      //   //   ),
      //   // ),
      // ),
      body: ListView(
          children: [Text(
            "Pedidos", style: Theme.of(context).textTheme.headline1
          ) ,
          const Text(
            "historico de pedidos"),
           const Divider(),
           cardDois(140, 100,Colors.amber, "Pizza Quatro Queijos","assets/pizza.png"),
           listTileCustom("Pizzaria da MAMA", "23/09/2021") ,
           Expanded(child: Container()),
          ElevatedButton(onPressed: () {}, child: const Text("Enviar para o WhatsApp")),
           const Divider(),
           cardDois(140, 100,Colors.green, "Pack 12 coca-cola","assets/bebidas.png"),
           listTileCustom("Zé DELIVERY", "26/09/2021") ,
           Expanded(child: Container()),
          ElevatedButton(onPressed: () {}, child: const Text("Enviar para o WhatsApp")),
           const Divider(),
           cardDois(140, 100,Colors.red, "Pack 12 coca-cola","assets/bebidas.png"),
           listTileCustom("Super Delivery", "30/08/2021") ,
           Expanded(child: Container()),
          ElevatedButton(onPressed: () {}, child: const Text("Enviar para o WhatsApp")),
           const Divider(),
            cardDois(140, 100,Colors.amber, "Pizza Quatro Queijos","assets/pizza.png"),
           listTileCustom("Pizzaria da MAMA", "23/09/2021") ,
           Expanded(child: Container()),
          ElevatedButton(onPressed: () {}, child: const Text("Enviar para o WhatsApp")),
         ],
    ));  
  }
}




// }
//        listTile(Icons.message, "Conversas", "Meu historico de conversas"),
//       const Divider(),
//     ],
//     )
//   );
//   }
// }


