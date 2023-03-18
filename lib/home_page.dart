import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tema3/checker.dart';
import 'package:tema3/custom_colors.dart';
import 'package:tema3/pop_up.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  CustomColors customColors = CustomColors();
  Checker checker = Checker();
  PopUp popUp = PopUp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[customColors.topColor, customColors.bottomColor],
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
                    color: customColors.topColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: customColors.bottomColor,
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
                        popUp.showPerfectCube(
                          context: context,
                          isPerfectCube: checker.checkPerfectCube(number),
                          titleNumber: _controller.text,
                        );
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: customColors.buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: customColors.bottomColor,
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
                        popUp.showPerfectSquare(
                          context: context,
                          isPerfectSquare: checker.checkPerfectSquare(number),
                          titleNumber: _controller.text,
                        );
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: customColors.buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: customColors.bottomColor,
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
                        popUp.showAll(
                          context: context,
                          isPerfectSquare: checker.checkPerfectSquare(number),
                          isPerfectCube: checker.checkPerfectCube(number),
                          titleNumber: _controller.text,
                        );
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: customColors.buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: customColors.bottomColor,
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
                          color: customColors.buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: customColors.bottomColor,
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
                          color: customColors.buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: customColors.bottomColor,
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
                      onPressed: () {
                        popUp.showInfo(context: context);
                      },
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                          color: customColors.buttonColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: customColors.bottomColor,
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
}
