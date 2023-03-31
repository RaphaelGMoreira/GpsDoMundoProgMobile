import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      //1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://pbs.twimg.com/media/FoeE653aEAE1ba8?format=jpg&name=900x900'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(children: [
          //TODO: Adicionar informações de autor
          //TODO: Adicionar texto posicionado
        ]),
      ),
    );
  }
}
