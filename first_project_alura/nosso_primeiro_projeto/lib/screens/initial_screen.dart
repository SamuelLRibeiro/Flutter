import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: ListView(
          children: const [
            Task('Aprender Flutter', 'assets/images/dash.png', 3),
            Task('Aprender a andar de bicicleta', 'assets/images/bike.webp', 2),
            Task('Meditar', 'assets/images/meditar.jpeg', 5),
            Task('Ler', 'assets/images/livro.jpg', 4),
            Task('Jogar RPG', 'assets/images/rpg.jfif', 4),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
