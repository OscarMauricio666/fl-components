import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Óscar Mauricio Rondón Fajardo'),
        actions: [
          Container(
            margin: const EdgeInsets.only(left: 39.0, right: 3),
            child: const CircleAvatar(
              //foregroundImage: AssetImage('assets/Foto_Perfil.png'),
              child: const Text('ÓM'),
              backgroundColor: Color.fromARGB(255, 66, 214, 71),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 99,
            foregroundImage: AssetImage('assets/Foto_Perfil.png')),
      ),
    );
  }
}
