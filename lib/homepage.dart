import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:normalproject/widget/card_widget.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
      ),
      body:  const SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child:CardWidget(title: 'Rocket',
                    imagePath: 'images/rocket.png',),
                ),
              ],
            ),
            Row(
              children: [
                  Expanded(
                   child: CardWidget(title: 'Space',
                     imagePath: 'images/space.png',),
                  ),
               Expanded(
                  child: CardWidget(title: 'Travel',
                    imagePath: 'images/travel.png',),
                      ),
              ],
            ),
            CardWidget(title: 'Yeah',
              imagePath: 'images/yeah.png',),
          ],
        ),
      ),
    );
  }
}
