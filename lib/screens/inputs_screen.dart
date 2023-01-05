import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: const [
                CustomInputField(
                  labelText: 'Nombres',
                  helperText: 'Ingresa tus nombres',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Correo',
                    helperText: 'Ingresa tu correo eléctronico',
                    keyboardtype: TextInputType.emailAddress,
                    prefixIcon: Icons.email_outlined),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  helperText: 'Ingresa tu contraseña',
                  keyboardtype: TextInputType.visiblePassword,
                  obscureText: true,
                  prefixIcon: Icons.key_outlined,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
