import 'package:flutter/material.dart';
import 'package:tema3/movies/movies_page.dart';

void main() {
  runApp(const Tema4());
}

class Tema4 extends StatelessWidget {
  const Tema4({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Check my number',
      home: MoviesPage(),
    );
  }
}
