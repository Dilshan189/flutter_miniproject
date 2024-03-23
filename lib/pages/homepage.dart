import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:normalproject/class/item_class.dart';
import 'package:normalproject/widget/card_widget.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
      ),
      body:   SingleChildScrollView(
        child: Column(
          children: [
                 CardWidget(
                   box:ItemClass(title: 'Rocket ',imagePath: 'images/rocket.png'),),

            Row(
              children:  [
                Expanded(
                  child: CardWidget(
                    box:ItemClass(title: 'Space ',imagePath: 'images/space.png'),
              ),
            ),

                  Expanded(
                   child: CardWidget(
                     box:ItemClass(title: 'Travel ', imagePath: 'images/travel.png'),
                   ),
                  ),
              ],
            ),
            CardWidget(
             box:ItemClass(title: 'Yeah ', imagePath: 'images/yeah.png'),

        ),
      ],
    ),),
    );
  }
}
