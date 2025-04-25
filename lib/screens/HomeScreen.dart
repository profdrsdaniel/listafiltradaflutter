import 'package:flutter/material.dart';
import 'package:untitled5/widgets/list_languages.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  TextEditingController textEditingController = TextEditingController();
  String _filtro = "";

  @override
  Widget build(BuildContext context) {
    debugPrint("chamei o BUILD");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [ListLanguages(filtro: _filtro)]),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: 130,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: textEditingController,
            onChanged: (value) {
              setState(() {
                _filtro = value;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Filtro"),
            ),
          ),
        ),
      ),
    );
  }
}
