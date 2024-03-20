import 'package:flutter/material.dart';
import '../core/constan.dart';


class CardWidget extends StatelessWidget {
  const CardWidget({super.key,
    required this.title,
    this.imagePath,
  });
  final String title;
  final String? imagePath;


  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding:  const EdgeInsets.all(8.0),
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: kDouble5),
                Image.asset(imagePath!),
                 Text(
                  title,
                  style: const TextStyle(fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const Text(' This is the Description'),
                const SizedBox(height: kDouble10),
              ],
            )
        ),
      );
  }
}
