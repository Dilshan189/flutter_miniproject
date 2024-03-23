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
          backgroundColor: Colors.red,


        /// Added the close button //////////////////////////

   /*     leading:IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.dangerous_outlined),

        ),

 */
        /// set the app bar icon ////////////////////////////
        actions: [
          IconButton(
              onPressed: () {
               ScaffoldMessenger.of(context).showSnackBar(
                 const SnackBar(
                   content: Text('Snackbar'),
                   behavior: SnackBarBehavior.floating,
                   ),
                 );
               },
              icon: const Icon(Icons.info_outline)),

        ],
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
                      setState(() {
                        fontSizeCustom =25;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ) ,
                    child: const Text('Small Title'),
                  ),


                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom =35;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ) ,
                    child: const Text('Medium Title'),
                  ),


                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom =50;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ) ,
                    child: const Text('Large Title'),
                  ),


                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom =200;
                      });
                      },
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ) ,
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
