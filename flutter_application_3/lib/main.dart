import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'contenido/my_app.dart';

void main() {
  // Mostrar guías de diseño solo cuando estés depurando; aquí lo desactivamos.
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}
