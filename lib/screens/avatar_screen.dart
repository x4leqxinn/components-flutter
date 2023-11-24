import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('x4leqxinn'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text('ale'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 200,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/564x/54/cd/f5/54cdf5e0f904be3b8e20a1386772a0fd.jpg'),
        ),
      ),
    );
  }
}
