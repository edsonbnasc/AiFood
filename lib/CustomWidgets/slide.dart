import 'dart:async';

import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController pageController = PageController();
  List<double> progresso = [0, 0, 0];
  int qtdPaginas = 3;
  int paginaAtual = 0;
  // int currentPage = 0;

  @override
  void initState() {
    super.initState();
    nextPage();
    iniciarProgresso();
  }

  nextPage() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      int page = pageController.page!.round()+1 ;
   
      if (page >= 3) {
        pageController.animateToPage(0,
        duration: const Duration(seconds: 2), curve: Curves.linear);
      } else {
        pageController.nextPage(
          duration: const Duration(seconds: 2), curve: Curves.linear);
          setState(() {
          paginaAtual = page;
        });
      }
    });
  }

// inicia o progresso
  void iniciarProgresso() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (progresso[paginaAtual] < 1) {
          progresso[paginaAtual] += 0.02;
        } else {
          timer.cancel();
          reset();
        }
      });
    });
  }

  // metodo de reset da animação
  void reset() {
    for (int i = 0; i < qtdPaginas; i++) {
      progresso[i] =  0.0;
    }
    iniciarProgresso();
  }

// metodo para criar o indicator
  List<Widget> builIndicator() {
    List<Widget> lista = [];
    for (int i = 0; i < qtdPaginas; i++) {
      lista.add(Container(
        width: 50,
        height: 5,
        margin: EdgeInsets.all(8),
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: progresso[i],
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(
          paginaAtual == i? Colors.blue : Colors.grey),
        ),
      ));
    }
    return lista;
  }

  // nextPage(){
  //   Timer.periodic(Duration(seconds: 2), (timer) {
  //     int page = pageController.page!.round() + 1;
  //     setState(() {
  //       currentPage = page;
  //     });
  //     if(currentPage >= 3){
  //       page = 0;
  //     }
  //     pageController.animateToPage(
  //       page,
  //       duration: Duration(seconds: 2),
  //       curve: Curves.easeOut);
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(14),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView(
              controller: pageController,
              children: [
                Container(
                  child: Image.network('assets/carne.gif'),
                ),
                Container(
                  child: Image.network('assets/massa.gif'),
                ),
                Container(
                  child: Image.network('assets/pizza.gif'),
                ),
                // Container(
                //   child: Image.network('assets/sanduiche.gif'),
                // ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: builIndicator(),
              ),
            ),
            // Padding(padding: EdgeInsets.all(8),
            // child: Row(mainAxisAlignment: MainAxisAlignment.center,
            // children: builIndicator(),
            // ),)
          ],
        ));
  }
}
