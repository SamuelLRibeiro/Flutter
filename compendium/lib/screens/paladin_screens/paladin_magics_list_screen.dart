import 'package:flutter/material.dart';

class PaladinMagicsList extends StatelessWidget {
  const PaladinMagicsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magias de Paladino'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Hero(
              tag: 'Paladin',
              child: Image.asset(
                'assets/images/paladin_dnd.jpg',
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
