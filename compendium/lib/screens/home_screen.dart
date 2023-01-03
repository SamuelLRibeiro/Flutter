import 'package:compendium/screens/bard_screens/bard_magic_level.dart';
import 'package:compendium/screens/cleric_screens/cleric_magics_list_screen.dart';
import 'package:compendium/screens/druid_screens/druid_magics_list_screen.dart';
import 'package:compendium/screens/paladin_screens/paladin_magics_list_screen.dart';
import 'package:compendium/screens/ranger_screens/ranger_magics_list_screen.dart';
import 'package:compendium/screens/sorcerer_screens/sorcerer_magics_list_screen.dart';
import 'package:compendium/screens/warlock_screens/warlock_magics_list_screen.dart';
import 'package:compendium/screens/wizard_screens/wizard_magics_list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Compêndio de Magias"),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const BardLevel(),
                  ),
                );
              },
              child: const Text('Magias de Bardo'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'Warlock',
              child: Image.asset(
                'assets/images/warlock_dnd.jpg',
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const WarlockMagicsList(),
                  ),
                );
              },
              child: const Text('Magias de Bruxo'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'Cleric',
              child: Image.asset(
                'assets/images/cleric_dnd.jpg',
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const ClericMagicsList(),
                  ),
                );
              },
              child: const Text('Magias de Clérigo'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'Druid',
              child: Image.asset(
                'assets/images/druid_dnd.jpg',
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const DruidMagicsList(),
                  ),
                );
              },
              child: const Text('Magias de Druida'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'Sorcerer',
              child: Image.asset(
                'assets/images/sorcerer_dnd.jpg',
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const SorcererMagicsList(),
                  ),
                );
              },
              child: const Text('Magias de Feiticeiro'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'Wizard',
              child: Image.asset(
                'assets/images/wizard_dnd.png',
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const WizardMagicsList(),
                  ),
                );
              },
              child: const Text('Magias de Mago'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'Paladin',
              child: Image.asset(
                'assets/images/paladin_dnd.jpg',
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const PaladinMagicsList(),
                  ),
                );
              },
              child: const Text('Magias de Paladino'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'Ranger',
              child: Image.asset(
                'assets/images/ranger_dnd.jpg',
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const RangerMagicsList(),
                  ),
                );
              },
              child: const Text('Magias de Patrulheiro'),
            ),
          ),
        ],
      ),
    );
  }
}
