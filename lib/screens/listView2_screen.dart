import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
  final options = const ['Alejandra', 'Leidy', 'Milena'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2'),
        backgroundColor: Colors.pinkAccent,
      ),
      //Carga perezosa de los items de la lista
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          title: Text(options[index]),
          trailing: const Icon(
            Icons.girl_outlined,
            color: Colors.deepPurple,
          ),
          onTap: () {
            final girl = options[index];
            print(girl);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
