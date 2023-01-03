import 'package:flutter/material.dart';

class WizardMagicsList extends StatelessWidget {
  const WizardMagicsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magias de Mago'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Hero(
              tag: 'Wizard',
              child: Image.asset(
                'assets/images/wizard_dnd.jpg',
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
