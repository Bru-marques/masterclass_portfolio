import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_card_container.dart';

class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);
//TODO separar o card, criar o modelo do conteudo e fazer o map listando as atividades

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CustomCardContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.video_collection_outlined),
                    Text('Animation'),
                  ],
                ),
                Row(
                  children: const [
                    Text('Exercises:'),
                    Text(' 4'),
                  ],
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 120,
              child: Text(
                  'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.video_collection_outlined),
                    Text('Animation'),
                  ],
                ),
                Row(
                  children: const [
                    Text('Exercises:'),
                    Text(' 4'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
