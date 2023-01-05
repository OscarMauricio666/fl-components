// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCard2 extends StatelessWidget {
  final String imageURL;
  final String? leyenda;
  const CustomCard2({
    Key? key,
    required this.imageURL,
    this.leyenda,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(4.0),
      shadowColor: Colors.red,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 3,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'),
            image: NetworkImage(imageURL),
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            //fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (leyenda != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.all(4.0),
              child: Text(leyenda ?? 'Sin leyenda'),
            )
        ],
      ),
    );
  }
}
