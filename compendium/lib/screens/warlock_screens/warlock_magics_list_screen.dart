import 'package:flutter/material.dart';

class WarlockMagicsList extends StatelessWidget {
  const WarlockMagicsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magias de Bruxo'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Hero(
                tag: 'Warlock',
                child: Image.asset(
                  'assets/images/warlock_dnd.jpg',
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
