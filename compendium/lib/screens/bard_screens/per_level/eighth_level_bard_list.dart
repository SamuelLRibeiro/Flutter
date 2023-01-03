import 'package:flutter/material.dart';

class EightLevelBardList extends StatefulWidget {
  const EightLevelBardList({Key? key}) : super(key: key);

  @override
  State<EightLevelBardList> createState() => _EightLevelBardListState();
}

class _EightLevelBardListState extends State<EightLevelBardList> {
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(
        header: "Amizade",
        body:
            'Pela duração, você terá vantagem em todos os testes de Carisma direcionados a uma criatura, à sua escolha, que não seja hostil a você. Quando a magia acabar, a criatura perceberá que você usou maia para influenciar o humor dela, e ficará hostil a você. Uma criatura propensa a violência irá atacar você. Outra criatura pode buscar outras formas de retaliação (a critério do Mestre), dependendo da natureza da sua interação com ela.'),
    ExpansionItem(
        header: "Ataque Certeiro",
        body:
            'Você estende sua mão e aponta o dedo para um alvo no alcance. Sua magia garante a você uma breve intuição sobre as defesas do alvo. No seu próximo turno, você terá vantagem na primeira jogada de ataque contra o alvo, considerando que essa magia não tenha acabado.'),
    ExpansionItem(
        header: "Consertar",
        body:
            'Essa magia repara um única quebra ou fissura em um objeto que você tocar, como um elo quebrado de uma corrente, duas metades de uma chave partida, um manto rasgado ou o vazamento em um odre. Contanto que a quebra ou fissura não tenha mais de 30 centímetros em qualquer dimensão, você pode remenda-la, não deixando qualquer vestígio do dano anterior.'
            'Essa magia pode reparar fisicamente um item mágico ou constructo, mas a magia não irá restaurar a magia em tais objetos.'),
    ExpansionItem(
        header: "Globos de Luz",
        body:
            'Você cria até quatro luzes do tamanho de tochas dentro do alcance, fazendo-as parecerem tochas, lanternas ou esferas luminosas que flutuam no ar pela duração. Você também pode combinar as quatro luzes em uma forma luminosa, vagamente humanoide, de tamanho Médio.'
            'Qualquer que seja a forma que você escolher, cada luz'
            'produz penumbra num raio de 3 metros. Com uma ação bônus, no seu turno, você pode mover'
            'as luzes, até 18 metros, para um novo local dentro do alcance. Uma luz deve estar a, pelo menos, 6 metros de outra luz criada por essa magia e uma luz some se exceder o alcance da magia.'),
    ExpansionItem(
        header: "Ilusão Menor",
        body:
            'Você cria um som ou uma imagem de um objeto, dentro do alcance, que permanece pela duração. A ilusão também termina se você dissipa-la usando uma ação ou conjurar essa magia novamente. Se você criar um som, seu volume pode variar entre um sussurro até um grito. Pode ser a sua voz, a voz de outrem, o rugido de um leão, batidas de tambor ou qualquer outro som que você quiser. O som permanece no mesmo volume durante toda duração ou você pode fazer sons distintos em momentos diferentes, antes da magia'
            'acabar. '
            'Se você criar uma imagem de um objeto – como uma '
            'cadeira, pegadas de lama ou um pequeno baú – ela não '
            'pode ter mais de 1,5 metro cúbico. A imagem não pode '
            'produzir som, luz, cheiro ou qualquer outro efeito '
            'sensorial. Interação física com a imagem revelará que ela '
            'é uma ilusão, já que as coisas podem atravessa-la. '
            'Se uma criatura usar sua ação para examinar a '
            'imagem, ela pode determinar que ela é uma ilusão se '
            'obtiver sucesso num teste de Inteligência (Investigação) '
            'contra a CD da magia. Se uma criatura discernir a ilusão '
            'como sendo isso, a ilusão se tornará suave para a '
            'criatura.'),
    ExpansionItem(
        header: "Luz",
        body:
            'Você toca um objeto que não tenha mais 3 metros em qualquer dimensão. Até a magia acabar, o objeto emite luz plena num raio de 6 metros e penumbra por 6 metros adicionais. Cobrir o objeto completamente com alguma coisa opaca bloqueará a luz. A magia termina se você conjura-la novamente ou dissipa-la com uma ação. Se você tentar afetar um objeto segurado ou vestido por uma criatura hostil, a criatura deve ser bem sucedida num teste de Destreza para evitar a magia.'),
    ExpansionItem(
        header: "Mãos Mágicas",
        body:
            'Uma mão espectral flutuante aparece num ponto, à sua escolha, dentro do alcance. A mão permanece pela duração ou até você dissipa-la com uma ação. A mão some se estiver a mais de 9 metros de você ou se você conjurar essa magia novamente. Você pode usar sua ação para controlar a mão. Você pode usar a mão para manipular um objeto, abrir uma porta ou recipiente destrancado, guardar ou pegar um item de um recipiente aberto ou derramar o conteúdo de um frasco. Você pode mover a mão até 9 metros a cada vez que a usa. A mão não pode atacar, ativar itens mágicos ou carregar mais de 5 quilos.'),
    ExpansionItem(
        header: "Mensagem",
        body:
            'Você aponta seu dedo para uma criatura dentro do alcance e sussurra uma mensagem. O alvo (e apenas ele) ouvi a mensagem e pode responder com um sussurro que apenas você pode ouvir. Você pode conjurar essa magia através de objetos sólidos se você tiver familiaridade com o alvo. Silêncio mágico, 30 centímetros de rocha, 2,5 centímetros de metal comum, uma fina camada de chumbo, ou 90 centímetros de madeira ou terra bloqueiam a magia. A magia não precisa seguir uma linha reta e pode viajar livremente, dobrando esquinas ou através de aberturas.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magias de nível 8'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ExpansionPanelList(
              dividerColor: Colors.white60,
              expandedHeaderPadding: const EdgeInsets.all(8),
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((ExpansionItem item) {
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.header),
                      );
                    },
                    isExpanded: item.isExpanded,
                    canTapOnHeader: true,
                    body: Text(item.body));
              }).toList()),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar'),
          )
        ],
      ),
    );
  }
}

class ExpansionItem {
  bool isExpanded;
  final String header;
  final String body;

  ExpansionItem(
      {this.isExpanded = false, required this.header, required this.body});
}
