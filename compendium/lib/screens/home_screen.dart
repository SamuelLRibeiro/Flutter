import 'package:compendium/screens/bard_magics_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'bard',
              child: Image.asset(
                'assets/images/bard_dnd.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contextNew) => const BardMagicsList(),
                ),
              );
            },
            child: const Text('Magias de Bardo'),
          ),
          Image.asset(
            'assets/images/wizard_dnd.png',
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Magias de Mago'),
          ),
        ],
      ),
    );
  }
}
