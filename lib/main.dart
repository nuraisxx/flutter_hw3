import 'package:flutter/material.dart';

void main() {
  runApp(const CreeperApp());
}

class CreeperApp extends StatelessWidget {
  const CreeperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creeper character of Minecraft',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Creeper from Minecraft'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.white,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CreeperIcon(),
                    SizedBox(height: 20),
                    Text(
                      'Creeper-моб из игры Minecraft, которого отличает взрывоопасность',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreeperIcon extends StatelessWidget {
  const CreeperIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 60,
            top: 20,
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 40,
            top: 40,
            child: Container(
              width: 20,
              height: 20,
              color: Colors.brown,
            ),
          ),
          Positioned(
            left: 25,
            top: 50,
            child: Container(
              width: 50,
              height: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
