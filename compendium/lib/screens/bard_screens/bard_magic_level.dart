import 'package:compendium/screens/bard_screens/per_level/eighth_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/fifth_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/first_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/fourth_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/ninth_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/second_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/seventh_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/sixth_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/third_level_bard_list.dart';
import 'package:compendium/screens/bard_screens/per_level/zero_level_bard_list.dart';
import 'package:flutter/material.dart';

class BardLevel extends StatelessWidget {
  const BardLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escolha de nível"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 8),
              child: Hero(
                tag: 'bard',
                child: Image.asset(
                  'assets/images/bard_dnd.jpg',
                  width: 400,
                  height: 290,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text('Magias de nível 0 (Truques)'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const ZeroLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const FirstLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 2'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const SecondLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 3'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const ThirdLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 4'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const FourthLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 5'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const FifthLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 6'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const SixthLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 7'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const SeventhLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 8'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const EightLevelBardList(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Magias de nível 9'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => const NinthLevelBardList(),
                  ),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Voltar'))
          ],
        ),
      ),
    );
  }
}
