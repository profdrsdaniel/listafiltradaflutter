import 'package:flutter/material.dart';

List<String> linguagensDeProgramacao = [
  'Dart',
  'Java',
  'Kotlin',
  'Swift',
  'Objective-C',
  'JavaScript',
  'Python',
  'C#',
  'C++',
  'Ruby',
  'Go',
  'Rust',
  'PHP',
  'TypeScript',
  'CSS',
  'SQL',
  'Shell',
  'Scala',
  'R',
  'Perl',
  'Haskell',
  'Lua',
  'Julia',
  'Groovy',
];

class ListLanguages extends StatefulWidget {
  final String filtro;

  const ListLanguages({required this.filtro});

  @override
  State<StatefulWidget> createState() {
    return _ListLanguages();
  }
}

class _ListLanguages extends State<ListLanguages> {
  List<String> listaFiltrada = linguagensDeProgramacao;

  @override
  void didUpdateWidget(covariant ListLanguages oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.filtro != widget.filtro) {
      listaFiltrada =
          linguagensDeProgramacao
              .where(
                (item) =>
                    item.toLowerCase().contains(widget.filtro.toLowerCase()),
          )
              .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 50 / 100,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.rocket),
            title: Text(listaFiltrada[index]),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: listaFiltrada.length,
      ),
    );
  }
}
