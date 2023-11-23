import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Home', 'valo', 'gg'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview 2'),
          elevation: 0,
          backgroundColor: Colors.pink,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.blue,
            ),
            onTap: () {
              final option = options[index];
              print(option);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length,
        ));
  }
}
