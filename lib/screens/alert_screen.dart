import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDiaglogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('TituloIOS'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Contendo de la alerta"),
                SizedBox(
                  height: 9,
                  width: 3,
                ),
                FlutterLogo(
                  size: 66,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Entendido"))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 9,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(9)),
            title: const Text("Esta es una alerta"),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text("Contendo de la alerta"),
              SizedBox(
                height: 9,
                width: 3,
              ),
              FlutterLogo(
                size: 66,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Entendido"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert')),
      body: Center(
        child: ElevatedButton(
            //onPressed: () => displayDialogAndroid(context),
            onPressed: () => !Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDiaglogIOS(context),
            child: const Text('Mostrar alerta')),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
