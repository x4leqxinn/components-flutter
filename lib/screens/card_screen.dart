import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            CustomCardType2(
              name: 'Mona xina',
              imageUrl:
                  'https://animeushi.com/wp-content/uploads/2020/09/FlyMeToTheMoonCover-750x400.jpg',
            ),
            CustomCardType2(
              imageUrl:
                  'https://animeushi.com/wp-content/uploads/2020/09/FlyMeToTheMoonCover-750x400.jpg',
            )
          ],
        ));
  }
}
