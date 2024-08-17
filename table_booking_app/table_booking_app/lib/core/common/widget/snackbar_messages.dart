// import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

import 'package:flutter/material.dart';

enum ContentType {
  success,
  failure,
  warning,
  pending,
  help,
}

void showSnackbarMsg({
  required BuildContext context,
  required String targetTitle,
  required String targetMessage,
  required ContentType type,
}) {
  final snackBar = SnackBar(
    // content: AwesomeSnackbarContent(
    //     title: targetTitle, message: targetMessage, contentType: type,),

    backgroundColor: type == ContentType.success ? Colors.green : Colors.red,
    elevation: 4,
    content: Column(
      children: [
        Text(targetTitle),
        Text(targetMessage),
      ],
    ),
  );
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}
