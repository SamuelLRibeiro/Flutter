import 'package:flutter/material.dart';

class RangerMagicsList extends StatelessWidget {
  const RangerMagicsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magias de Patrulheiro'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Hero(
              tag: 'Ranger',
              child: Image.asset(
                'assets/images/ranger_dnd.jpg',
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
