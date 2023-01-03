import 'package:flutter/material.dart';

class ClericMagicsList extends StatelessWidget {
  const ClericMagicsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magias de Clérigo'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Hero(
              tag: 'Cleric',
              child: Image.asset(
                'assets/images/cleric_dnd.jpg',
                width: 400,
                height: 290,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
