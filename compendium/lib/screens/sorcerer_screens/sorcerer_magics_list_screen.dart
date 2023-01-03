import 'package:flutter/material.dart';

class SorcererMagicsList extends StatelessWidget {
  const SorcererMagicsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magias de Feiticeiro'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Hero(
                tag: 'Sorcerer',
                child: Image.asset(
                  'assets/images/sorcerer_dnd.jpg',
                  width: 400,
                  height: 290,
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}
