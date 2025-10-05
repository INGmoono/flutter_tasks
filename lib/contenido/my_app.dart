import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeria de Container',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Galeria construida con Container'),
          ),
          body: SingleChildScrollView(
            child: Center(child: _buildImageColumn()),
          ),
        ),
      );
  }

// inicio de construccion por columna
  Widget _buildImageColumn(){
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black26,
      ), 
      child: ClipRect(
        child: Align(
          alignment: Alignment.center,
          widthFactor: 1,
          heightFactor: 1,
          child: Column(
            children: [
              _buildImageRow(1),
              _buildImageRow(3),
            ],
          ),
        )
      ),
    );
  }

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: Image.asset('images/pic$imageIndex.jpg'),
    ),
  );

  Widget _buildImageRow(int imageIndex) => Row(
    children: [
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex + 1),
    ],
  );
}