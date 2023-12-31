import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Home', 'valo', 'gg'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((option) => ListTile(
                      title: Text(option),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
