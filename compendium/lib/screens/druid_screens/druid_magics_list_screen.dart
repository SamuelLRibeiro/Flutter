import 'package:flutter/material.dart';

class DruidMagicsList extends StatelessWidget {
  const DruidMagicsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magias de Druida'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Hero(
              tag: 'Druid',
              child: Image.asset(
                'assets/images/druid_dnd.jpg',
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
