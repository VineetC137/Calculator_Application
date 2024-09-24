import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:string_validator/string_validator.dart';

void main() {
  runApp(
    const MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String display = '';
  Parser p = Parser();
  double result = 0;
  String input = "";
  var txt = TextEditingController();
  bool isNewOperation = true;
  bool isInfinityResult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Calculator",
            textDirection: TextDirection.ltr,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              readOnly: true,
              controller: txt,
              textAlign: TextAlign.right,
              style: (TextStyle(fontSize: 60)),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        txt.text += "(";
                        isNewOperation = false;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("(", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        txt.text += ")";
                        isNewOperation = false;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text(")", textDirection: TextDirection.ltr),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        txt.text += "√";
                        isNewOperation = false;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("√", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        txt.text += "^";
                        isNewOperation = false;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("^", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txt.text = "";
                      isInfinityResult = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("C", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String temp = "";
                      for (int i = 0; i < txt.text.length - 1; i++) {
                        if (txt.text[i] != '+' &&
                            txt.text[i] != '-' &&
                            txt.text[i] != '*' &&
                            txt.text[i] != '/' &&
                            txt.text[i] != '√' &&
                            txt.text[i] != '^') {
                          temp += txt.text[i];
                        }
                      }
                      txt.text = temp;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("CE", textDirection: TextDirection.ltr),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "7";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("7", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "8";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("8", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "9";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("9", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        txt.text += "/";
                        isNewOperation = false;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("/", textDirection: TextDirection.ltr),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "4";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("4", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "5";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("5", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "6";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("6", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        txt.text += "*";
                        isNewOperation = false;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("*", textDirection: TextDirection.ltr),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "1";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("1", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "2";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("2", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "3";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("3", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        txt.text += "-";
                        isNewOperation = false;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("-", textDirection: TextDirection.ltr),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        txt.text += "0";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("0", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isNewOperation) {
                        txt.text = "";
                        isNewOperation = false;
                      }
                      if (!txt.text.contains(".")) {
                        txt.text += ".";
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text(".", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input = txt.text;
                      equalPressed();
                      isNewOperation = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("=", textDirection: TextDirection.ltr),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!isInfinityResult) {
                      setState(() {
                        if (isNewOperation) {
                          txt.text = "";
                          isNewOperation = false;
                        }
                        if (txt.text.isEmpty) {
                          return;
                        }
                        String lastChar = txt.text.substring(txt.text.length - 1);
                        if (lastChar == "+" ||
                            lastChar == "-" ||
                            lastChar == "*" ||
                            lastChar == "/") {
                          txt.text =
                              txt.text.substring(0, txt.text.length - 1);
                        }
                        txt.text += "+";
                        isNewOperation = false;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text("+", textDirection: TextDirection.ltr),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void equalPressed() {
    String a = "";
    for (int i = 0; i < input.length; i++) {
      var char = input[i];
      if (char == '√') {
        a += "sqrt";
        if (input[i] == '(') {
          continue;
        } else if (isInt(input[i + 1]) || input[i + 1] == '.') {
          a += '(';
          for (int q = i + 1; q < input.length; q++) {
            if (isInt(input[q]) ||input[q] == '.') {
              a += input[q];
              i = q;
              if (q == input.length - 1) {
                a += ')';
                break;
              }
            } else {
              a += ')';
              a += input[q];
              i = q;
              break;
            }
          }
        }
      } else {
        a += char;
      }
    }
    input = a;
    Parser p = Parser();
    Expression exp = p.parse(input);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    if (eval == double.infinity || eval == -double.infinity) {
      isInfinityResult = true;
      display = "Infinity";
    } else {
      if (eval % 1 == 0.0) {
        int evaluated = eval.round();
        display = evaluated.toString();
      } else {
        display = eval.toString();
      }
    }
    txt.text = display;
    input = display;
  }
}

bool isInt(String s) {
  if (s == null) {
    return false;
  }
  return int.tryParse(s) != null;
}