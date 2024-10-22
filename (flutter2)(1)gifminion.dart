import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Página Inicial'),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 250,
          child: Stack(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              // Gradiente de fundo
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.purple,
                      Colors.blue,
                      Colors.purple,
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0), // Margem horizontal
                  child: Image.network(
                    'https://i.giphy.com/xT0xezQGU5xCDJuCPe.webp', // URL da imagem
                    width: 250, 
                    height: 100, 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          print("FAB pressed!");
        },
        tooltip: "Exemplo de botão",
        child: const Icon(Icons.add),
      ),
    );
  }
}
