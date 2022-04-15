import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _contato = 0;

  _incremetar() {
    setState(() {
      _contato++;
    });

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "${_contato}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  child: Text(
                    "Adicionar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 80,
                    ),
                  ),
                  onPressed: () {
                    _incremetar();
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
