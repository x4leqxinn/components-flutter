import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(children: [
        FadeInImage(
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          placeholder: const AssetImage('assets/loadings/jar-loading.gif'),
          fadeInDuration: const Duration(milliseconds: 300),
          image: NetworkImage(imageUrl),
        ),
        if (name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name!),
          ),
      ]),
    );
  }
}
