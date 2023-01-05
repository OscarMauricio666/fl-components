import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final options = const ['Alejandra', 'Leidy', 'Milena'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 1'),
      ),
      body: ListView(children: [
        ...options
            .map((girl) => ListTile(
                  leading: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  title: Text(girl),
                  trailing:
                      const Icon(Icons.airline_seat_individual_suite_outlined),
                ))
            .toList()
      ]),
    );
  }
}
