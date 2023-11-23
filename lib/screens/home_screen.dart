import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('Ruta'),
                  leading: const Icon(Icons.access_alarm),
                  onTap: () {
                    final route = MaterialPageRoute(
                        builder: (context) => const ListView1Screen());
                    Navigator.push(context, route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
