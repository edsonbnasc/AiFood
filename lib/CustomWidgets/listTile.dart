import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

Widget listTile(IconData iconLeanding, String title, String subtitle) {
  return ListTile(
    onTap: () => {},
    leading: Icon(iconLeanding),
    title: Text(
      title,
      style: textNunitoBold(16),
    ),
    subtitle: Text(
      subtitle,
      style: textNunito300(14),
    ),
    trailing: const Icon(Icons.arrow_right),
  );
}
