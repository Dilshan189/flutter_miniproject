import 'package:flutter/material.dart';
import 'package:normalproject/class/item_class.dart';
import 'package:normalproject/pages/discription_page.dart';
import '../core/constan.dart';


class CardWidget extends StatelessWidget {
  const CardWidget({super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return  Desciptionpage(
                box:box);  ///(Description page rout)////
              },
            ),
          );
      },


      child: Card(
          child: Container(
              padding:  const EdgeInsets.all(8.0),
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: kDouble5),
                  Image.asset(box.imagePath),
                   Text(
                    box.title,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                   Text(' This is the ${box.title} Description'),
                  const SizedBox(height: kDouble10),
                ],
              )
          ),
        ),
    );

    ///end today
  }
}
