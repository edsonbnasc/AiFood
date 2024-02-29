// import 'dart:ffi';

import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';




Widget listTileCustom(String  title, String subtitle) {
   return ListTile(
       onTap: () => {},
    title: Text(
      title,
      style: textNunitoBold(16),
    ),
    subtitle: Text(
      subtitle,
      style: textNunito300(14),
    ),
    // leading: CircleAvatar(
    //    backgroundImage: Image.asset(img).image
    //  ) ,
   trailing: const Icon(Icons.arrow_right),
  );
}



// class ListTileCustom {
//   String name;
//   String date;

//   ListTileCustom(this.name, this.date);

//   ListTile toListTile
//   (BuildContext context){
//     return ListTile(title: Text(name), subtitle: Text(date));
//   }
// }





// Widget listTile(IconData iconLeanding, String title, String subtitle) {
//   return ListTile(
//     onTap: () => {},
//     leading: Icon(iconLeanding),
//     title: Text(
//       title,
//       style: textNunitoBold(16),
//     ),
//     subtitle: Text(
//       subtitle,
//       style: textNunito300(14),
//     ),
//     trailing: const Icon(Icons.arrow_right),
//   );
// }
