import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:normalproject/class/item_class.dart';
import 'package:normalproject/core/constan.dart';

class Desciptionpage extends StatefulWidget {
  const Desciptionpage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<Desciptionpage> createState() => _DesciptionpageState();
}

class _DesciptionpageState extends State<Desciptionpage> {
  double fontSizeCustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false, ///Appbar arrow key close///
        title: Text(widget.box.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () {

                    },
                    child: const Text('Small Title'),
                  ),


                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Medium Title'),
                  ),


                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Large Title'),
                  ),


                  FilledButton(
                    onPressed: () {
                      setState(() {

                      });
                      fontSizeCustom =200;
                    },
                    child: const Text('Huge Title'),
                  ),

                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    fontSize: fontSizeCustom ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                beconDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kDouble10),
              const Text(
                beconDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
