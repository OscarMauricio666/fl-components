// ignore: file_names
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.abc_sharp,
              color: AppTheme.primaryDark,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text("Este es el subtitulo"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("OK")),
                TextButton(
                  onPressed: () {},
                  //style: TextButton.styleFrom(foregroundColor: Colors.indigo),
                  child: const Text("Option2"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
