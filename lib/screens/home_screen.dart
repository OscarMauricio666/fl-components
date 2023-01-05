import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, int i) => ListTile(
                  leading:
                      Icon(menuOptions[i].icon, color: AppTheme.primaryLigth),
                  title: Text(menuOptions[i].name),
                  onTap: () {
                    // // final route = MaterialPageRoute(
                    // //     builder: (context) => menuOptions.[i].(context) {

                    //});
                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, int __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
