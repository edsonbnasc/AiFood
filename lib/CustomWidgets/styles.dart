import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Estilo roboto negrito
TextStyle textRobotoBold(double tamanho) {
  return GoogleFonts.roboto(
    fontSize: tamanho,
    fontWeight: FontWeight.bold,
  );
}

//Estilo roboto 300
TextStyle textRoboto300(double tamanho) {
  return GoogleFonts.roboto(
    fontSize: tamanho,
    fontWeight: FontWeight.w300,
  );
}

//Cria um espaço na horizontal
Widget espacoHorizontal(double espaco) {
  return SizedBox(width: espaco);
}

//Cria um espaço na vertical
Widget espacoVertical(double espaco) {
  return SizedBox(height: espaco);
}

//Estilo Nunito 300
TextStyle textNunito300(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    fontWeight: FontWeight.w300,
  );
}

//Estilo Nunito 300
TextStyle textNunitoBold(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    fontWeight: FontWeight.w700,
  );
}

TextStyle textNunitoWhiteBold(double tamanho) {
  return GoogleFonts.nunitoSans(
    color: Colors.white,
    fontSize: tamanho,
    fontWeight: FontWeight.bold
  );
}
