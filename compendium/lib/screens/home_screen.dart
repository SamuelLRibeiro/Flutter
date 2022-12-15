import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compêndio de Magias'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 12,
            child: ListView(
              shrinkWrap: true,
              children: [
                TextButton(
                  onPressed: () {},
                  child: ListTile(
                    title: Text('Magia 1'),
                    trailing: const Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: ListTile(
                    title: Text('Magia 2'),
                    trailing: const Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: ListTile(
                    title: Text('Magia 3'),
                    trailing: const Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: ListTile(
                    title: Text('Magia 4'),
                    trailing: const Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: ListTile(
                    title: Text('Magia 5'),
                    trailing: const Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: ListTile(
                    title: Text('Magia 6'),
                    trailing: const Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
