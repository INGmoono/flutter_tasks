import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
    debugPaintSizeEnabled = false; // Set to true for visual layout
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter layout demo',
            home: Scaffold(
                appBar: AppBar(
                    title: const Text('Flutter layout demo'),
                ), // AppBar
                body: Center(child: _buildImageColumn()),
            ), // Scaffold
        ); // MaterialApp
    }
}

// #docregion column
Widget _buildImageColumn() {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.black26,
        ), // BoxDecoration
        child: SingleChildScrollView(
            child: Column(
                children: [
                    _buildImageRow(1),
                    _buildImageRow(3),
                ],
            ), // Column
        ), // SingleChildScrollView
    ); // Container
}
// #enddocregion column

// #docregion row
Widget _buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
        ), // BoxDecoration
        margin: const EdgeInsets.all(4),
        child: Image.asset('images/pic$imageIndex.jpg'),
    ), // Container
); // Expanded

Widget _buildImageRow(int imageIndex) => Row(
    children: [
        _buildDecoratedImage(imageIndex),
        _buildDecoratedImage(imageIndex + 1),
    ],
);
// #enddocregion row
