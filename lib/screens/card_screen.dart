import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.all(6.6),
          children: const [
            CustomCard2(
              imageURL: 'https://picsum.photos/250?image=6',
            ),
            SizedBox(
              height: 9,
            ),
            CustomCard2(
              imageURL: 'https://picsum.photos/250?image=3',
            ),
            SizedBox(
              height: 9,
            ),
            CustomCard2(
              imageURL: 'https://picsum.photos/250?image=12',
              leyenda: 'con leyenda',
            ),
            CustomCard2(
              imageURL: 'https://picsum.photos/250?image=9',
              leyenda: '',
            ),
          ],
        ));
  }
}
