import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tema3/checker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color topColor = const Color(0xFF2877D0);
  Color bottomColor = const Color(0xFF1B2C47); //used for shadows too
  Color buttonColor = const Color(0xFF2260A8);
  final TextEditingController _controller = TextEditingController();
  Checker checker = Checker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[topColor, bottomColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 100),
                Text(
                  'Check my number',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 140),
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: topColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: bottomColor,
                        spreadRadius: 3,
                        blurRadius: 35,
                        offset: const Offset(0, 18),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _controller,
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Introduceti numarul',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <TextButton>[
                    TextButton(
                      onPressed: () {
                        final double number = double.parse(_controller.text);
                        showPerfectCube(
                          isPerfectCube: checker.checkPerfectCube(number),
                        );
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: bottomColor,
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset: const Offset(0, 14),
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Check cube',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        final double number = double.parse(_controller.text);
                        showPerfectSquare(
                          isPerfectSquare: checker.checkPerfectSquare(number),
                        );
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: bottomColor,
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset: const Offset(0, 14),
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Check square',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        final double number = double.parse(_controller.text);
                        showAll(
                          isPerfectSquare: checker.checkPerfectSquare(number),
                          isPerfectCube: checker.checkPerfectCube(number),
                        );
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: bottomColor,
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset: const Offset(0, 14),
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Check all',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <TextButton>[
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _controller.text = '${checker.perfectCubeExample()}';
                        });
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: bottomColor,
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset: const Offset(0, 14),
                            )
                          ],
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'X\u{00B3}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _controller.text = '${checker.perfectSquareExample()}';
                        });
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: bottomColor,
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset: const Offset(0, 14),
                            )
                          ],
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'X\u{00B2}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: showInfo,
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: bottomColor,
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset: const Offset(0, 14),
                            )
                          ],
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Info',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showInfo() {
    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: topColor,
          content: const Text(
            'Introdu un numar si verifica daca este patrat perfect, cub perfect sau amandoua. '
            'Butoanele X\u{00B2} si X\u{00B3} ofera exemple de patrate perfecte respectiv '
            'cuburi perfecte.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
          actions: <Widget>[
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 52,
                  width: 70,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: bottomColor,
                        spreadRadius: 3,
                        blurRadius: 20,
                        offset: const Offset(0, 14),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Ok',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void showPerfectSquare({required bool isPerfectSquare}) {
    int? number;
    int? sqrRoot;
    String title = 'nu este patrat perfect';
    String ecuation = 'Numarul nu are radacina patrata';
    if (isPerfectSquare) {
      number = int.parse(_controller.text);
      sqrRoot = sqrt(number).toInt();
      title = 'este patrat perfect';
      ecuation = '$number = $sqrRoot * $sqrRoot';
    }

    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: topColor,
          title: Text(
            '${_controller.text} $title',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          content: Text(
            ecuation,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          actions: <Widget>[
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 52,
                  width: 70,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: bottomColor,
                        spreadRadius: 3,
                        blurRadius: 20,
                        offset: const Offset(0, 14),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Ok',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void showPerfectCube({required bool isPerfectCube}) {
    int? number;
    int? cubeRoot;
    String title = 'nu este cub perfect';
    String ecuation = 'Numarul nu are radacina cubica';
    if (isPerfectCube) {
      number = int.parse(_controller.text);
      if (number > 0) {
        cubeRoot = pow(number, 1 / 3).round();
      } else {
        cubeRoot = pow(number.abs(), 1 / 3).round();
        cubeRoot = -cubeRoot;
      }
      ecuation = '$number = $cubeRoot * $cubeRoot * $cubeRoot';
      title = 'este cub perfect';
    }

    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: topColor,
          title: Text(
            '${_controller.text} $title',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          content: Text(
            ecuation,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          actions: <Widget>[
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 52,
                  width: 70,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: bottomColor,
                        spreadRadius: 3,
                        blurRadius: 20,
                        offset: const Offset(0, 14),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Ok',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void showAll({required bool isPerfectSquare, required bool isPerfectCube}) {
    int? number;
    int? cubeRoot;
    int? sqrRoot;
    String? title;
    String? sqrEcuation;
    String? cubeEcuation;
    number = int.parse(_controller.text);

    if (isPerfectSquare) {
      sqrRoot = sqrt(number).toInt();
      title = 'este patrat perfect';
      sqrEcuation = '$number = $sqrRoot * $sqrRoot';
      if (isPerfectCube) {
        cubeRoot = checker.getCubeRoot(number);
        title += ' si cub perfect.';
        cubeEcuation = '$number = $cubeRoot * $cubeRoot * $cubeRoot';
      } else {
        title += ' dar nu este cub perfect';
        cubeEcuation = 'Nu are radacina cubica';
      }
    } else if (!isPerfectSquare) {
      title = 'nu este patrat perfect';
      sqrEcuation = 'Nu are radacina patrata';
      if (isPerfectCube) {
        cubeRoot = checker.getCubeRoot(number);
        title += ' dar este cub perfect.';
        cubeEcuation = '$number = $cubeRoot * $cubeRoot * $cubeRoot';
      } else {
        title += ' si nici cub perfect';
        cubeEcuation = 'Nu are radacina cubica';
      }
    }

    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: topColor,
          title: Text(
            '${_controller.text} $title',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          content: Text(
            '$sqrEcuation\n$cubeEcuation',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          actions: <Widget>[
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 52,
                  width: 70,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: bottomColor,
                        spreadRadius: 3,
                        blurRadius: 20,
                        offset: const Offset(0, 14),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Ok',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
