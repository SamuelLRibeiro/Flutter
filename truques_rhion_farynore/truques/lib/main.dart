import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF14181d),
          title: const Text(
            'Rhion Farynore',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Container(
          //color: const Color(0xFFfde9d9),
          color: const Color(0xFF14181d),
          child: ListView(
            children: const [
              Truque(
                  'Ilusão Menor',
                  '1 ação, 9M, V, M, 1 minuto, Ilusão',
                  'Material: um pouco de lã. Você cria um som ou uma imagem '
                      'de um objeto, dentro do alcance, que permanece pela '
                      'duração. A ilusão também termina se você dissipa-la '
                      'usando uma ação ou conjurar essa magia novamente. Se você criar um som, seu volume pode variar entre um sussurro até um grito. Pode ser a sua voz, a voz de outrem, o rugido de um leão, batidas de tambor ou qualquer outro som que você quiser. O som permanece no mesmo volume durante toda duração ou você pode fazer sons distintos em momentos diferentes, antes da magia acabar. Se você criar uma imagem de um objeto – como uma cadeira, pegadas de lama ou um pequeno baú – ela não pode ter mais de 1,5 metro cúbico. A imagem não pode produzir som, luz, cheiro ou qualquer outro efeito sensorial. Interação física com a imagem revelará que ela é uma ilusão, já que as coisas podem atravessa-la. Se uma criatura usar sua ação para examinar a imagem, ela pode determinar que ela é uma ilusão se obtiver sucesso num teste de Inteligência (Investigação) contra a CD da magia. Se uma criatura discernir a ilusão como sendo isso, a ilusão se tornará suave para a criatura.'),
              Truque(
                  'Ataque Certeiro',
                  '1 ação, 9M, S, até uma rodada, '
                      'Adivinhação',
                  'Você estende sua mão e aponta o dedo para um alvo no alcance. Sua magia garante a você uma breve intuição sobre as defesas do alvo. No seu próximo turno, você terá vantagem na primeira jogada de ataque contra o alvo, considerando que essa magia não tenha acabado.'),
              Truque(
                  'Mãos Mágicas',
                  '1 ação, 9M, V,S, 1 minuto, Conjuração',
                  'Uma mão espectral flutuante aparece num ponto, à sua '
                      'escolha, dentro do alcance. A mão permanece pela '
                      'duração ou até você dissipa-la com uma ação. A mão some se estiver a mais de 9 metros de você ou se você conjurar essa magia novamente. Você pode usar sua ação para controlar a mão. Você pode usar a mão para manipular um objeto, abrir uma porta ou recipiente destrancado, guardar ou pegar um item de um recipiente aberto ou derramar o conteúdo de um frasco. Você pode mover a mão até 9 metros a cada vez que a usa. A mão não pode atacar, ativar itens mágicos ou carregar mais de 5 quilos.'),
              Truque(
                  'Toque Arrepiante',
                  '1 ação, 36M, V,S, 1 rodada, '
                      'Necromancia',
                  'Você cria uma mão esquelética fantasmagórica no espaço de '
                      'uma criatura, dentro do alcance. Realize um ataque à '
                      'distância com magia contra a criatura para afeta-la com o frio sepulcral. Se atingir, a criatura sofre 1d8 de dano necrótico e não poderá recuperar pontos de vida até o início do seu próximo turno. Até lá, a mão ficará presa ao alvo. Se você atingir um alvo morto-vivo, ele terá desvantagem nas jogadas de ataque contra você até o final do seu próximo turno. O dano dessa magia aumenta em 1d8 quando você alcança o 5° nível (2d8), 11° nível (3d8) e 17° nível (4d8).'),
            ],
          ),
        ),
      ),
    );
  }
}

class Truque extends StatelessWidget {
  final String nome;
  final String componentes;
  final String descricao;

  const Truque(this.nome, this.componentes, this.descricao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.95))
          ],
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                width: 400,
                height: 40,
                child: Text(
                  nome,
                  style: const TextStyle(fontFamily: 'Garamond', fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 35, 10, 35),
              child: SizedBox(
                width: 400,
                child: Text(
                  componentes,
                  style: const TextStyle(fontFamily: 'Garamond', fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 40),
              child: SizedBox(
                width: 400,
                child: Text(
                  descricao,
                  style: const TextStyle(fontFamily: 'Garamond', fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
