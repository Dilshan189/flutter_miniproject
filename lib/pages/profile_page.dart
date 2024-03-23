import 'package:flutter/material.dart';
import 'package:normalproject/core/constan.dart';
import 'package:normalproject/core/notifiers,dart.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
      body: const Column(
        children: [
          CircleAvatar(
              backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(height: kDouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Flutter MApp'),
          ),

          ListTile(
            leading: Icon(Icons.mail),
            title: Text('DilshanRathnayaka547@gmail.com'),
          ),

          ListTile(
            leading: Icon(Icons.web),
            title: Text('DilshanRathnayakaweb'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          isDarkModelNotifier.value = !isDarkModelNotifier.value;
        },
        child: ValueListenableBuilder(valueListenable: isDarkModelNotifier,
          builder: (context, isDark,child) {
          if(!isDark) {
            return const Icon(Icons.dark_mode);
            }else
              {
                return const Icon(Icons.light_mode);
              }
          },
      ),
      ),
    );
  }
}
