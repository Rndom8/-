import 'package:flutter/material.dart';

String title = '';
String lang1 = '';
num result = 0;
int vlang = 0;
var symbol = 0;
double resultsize = 46;
String operation = '0';
String meter = '';
String meter1 = '';
String meter2 = '';
void changesize() {
  String sres = result.toString();

  resultsize = (resultsize - sres.length * 0.7);
}

void calculations() {
  var a = double.parse(meter1);
  var b = double.parse(meter2);

  if (symbol == 2) {
    result = (result + a - b);
    result = num.parse((result).toStringAsFixed(2));
  }
  if (symbol == 1) {
    result = (result + a + b);
    result = num.parse((result).toStringAsFixed(2));
  }
  if (symbol == 3) {
    result = (result + a * b);
    result = num.parse((result).toStringAsFixed(2));
  }
  if (symbol == 4) {
    result = (result + a / b);
    result = num.parse((result).toStringAsFixed(2));
  }

  meter = '';
  meter1 = '';
  meter2 = '';
  changesize();
}

void clear() {}

void lang() {
  if (vlang % 2 == 0) {
    title = 'Kalkulator';
    lang1 = 'Język';
  }

  if (vlang % 2 != 0) {
    title = 'Calculator';
    lang1 = 'Language';
  }
}

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  void _incrementlang() {
    setState(() {
      vlang++;
    });

    lang();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Column(children: [Text(title)])),
              Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  alignment: Alignment.centerRight,
                  child: Column(children: [
                    Text(operation,
                        style:
                            const TextStyle(fontSize: 28, color: Colors.grey))
                  ])),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.centerRight,
                child: Column(children: [
                  Text(result.toString(),
                      style: TextStyle(
                          fontSize: resultsize, color: Colors.black54)),
                ]),
              ),
              Column(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.125,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation.length < 24) {
                                      meter = '${meter}1';

                                      if (operation == '0') {
                                        operation = '1';
                                      } else {
                                        operation = '${operation}1';
                                      }
                                    }
                                  });
                                },
                                child: const Text('1')),
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation.length < 24) {
                                      meter = '${meter}2';

                                      if (operation == '0') {
                                        operation = '2';
                                      } else {
                                        operation = '${operation}2';
                                      }
                                    }
                                  });
                                },
                                child: const Text('2')),
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation.length < 24) {
                                      meter = '${meter}3';

                                      if (operation == '0') {
                                        operation = '3';
                                      } else {
                                        operation = '${operation}3';
                                      }

                                      if (meter2 != '') {
                                        meter1 = result.toString();
                                        meter2 = meter;
                                      }
                                    }
                                  });
                                },
                                child: const Text('3')),
                          ])),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.125,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 45)),
                              onPressed: () {
                                setState(() {
                                  if (operation.length < 24) {
                                    meter = '${meter}4';

                                    if (operation == '0') {
                                      operation = '4';
                                    } else {
                                      operation = '${operation}4';
                                    }
                                  }
                                });
                              },
                              child: const Text('4')),
                          TextButton(
                              style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 45)),
                              onPressed: () {
                                setState(() {
                                  if (operation.length < 24) {
                                    meter = '${meter}5';

                                    if (operation == '0') {
                                      operation = '5';
                                    } else {
                                      operation = '${operation}5';
                                    }
                                  }
                                });
                              },
                              child: const Text('5')),
                          TextButton(
                              style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 45)),
                              onPressed: () {
                                setState(() {
                                  if (operation.length < 24) {
                                    meter = '${meter}6';
                                    if (operation == '0') {
                                      operation = '6';
                                    } else {
                                      operation = '${operation}6';
                                    }
                                  }
                                });
                              },
                              child: const Text('6')),
                        ],
                      )),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.125,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation.length < 24) {
                                      meter = '${meter}7';

                                      if (operation == '0') {
                                        operation = '7';
                                      } else {
                                        operation = '${operation}7';
                                      }
                                    }
                                  });
                                },
                                child: const Text('7')),
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation.length < 24) {
                                      meter = '${meter}8';

                                      if (operation == '0') {
                                        operation = '8';
                                      } else {
                                        operation = '${operation}8';
                                      }
                                    }
                                  });
                                },
                                child: const Text('8')),
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation.length < 24) {
                                      meter = '${meter}9';

                                      if (operation == '0') {
                                        operation = '9';
                                      } else {
                                        operation = '${operation}9';
                                      }
                                    }
                                  });
                                },
                                child: const Text('9')),
                          ])),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.125,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation.length < 24) {
                                      meter = '${meter}0';

                                      if (operation == '0') {
                                        operation = '00';
                                      } else {
                                        operation = '${operation}00';
                                      }
                                    }
                                  });
                                },
                                child: const Text('00')),
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation.length < 24) {
                                      meter = '${meter}0';

                                      if (operation == '0') {
                                        operation = '0';
                                      } else {
                                        operation = '${operation}0';
                                      }
                                    }
                                  });
                                },
                                child: const Text('0')),
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 45)),
                                onPressed: () {
                                  setState(() {
                                    if (operation != null &&
                                        operation.length > 0) {
                                      operation = operation.substring(
                                          0, operation.length - 1);
                                    }

                                    if (meter != null && meter.length > 0) {
                                      meter =
                                          meter.substring(0, meter.length - 1);
                                    }
                                  });
                                },
                                child: const Text('⇦')),
                          ])),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 35)),
                      onPressed: () {
                        setState(() {
                          if (operation[operation.length - 1] != '+' &&
                              operation[operation.length - 1] != '÷' &&
                              operation[operation.length - 1] != '✖' &&
                              operation[operation.length - 1] != '﹣' &&
                              operation.length < 24) {
                            operation = '$operation+';
                            symbol = 1;
                          }

                          if (meter1 == '') {
                            meter1 = meter1 + meter;
                            meter = '';
                          } else {
                            meter2 = meter2 + meter;
                            meter = '';
                          }

                          if (meter2 != '') {
                            calculations();
                          }
                        });
                      },
                      child: const Text('＋'), //dodawanie
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 35)),
                      onPressed: () {
                        setState(() {
                          if (meter1 == '') {
                            meter1 = meter1 + meter;
                            meter = '';
                          } else {
                            meter2 = meter2 + meter;
                            meter = '';
                          }

                          if (operation[operation.length - 1] != '+' &&
                              operation[operation.length - 1] != '÷' &&
                              operation[operation.length - 1] != '✖' &&
                              operation[operation.length - 1] != '﹣' &&
                              operation.length < 24) {
                            operation = '$operation﹣';
                            symbol = 2;
                          }
                        });
                      },
                      child: const Text('﹣'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 35)),
                      onPressed: () {
                        setState(() {
                          if (operation[operation.length - 1] != '+' &&
                              operation[operation.length - 1] != '÷' &&
                              operation[operation.length - 1] != '✖' &&
                              operation[operation.length - 1] != '﹣' &&
                              operation.length < 24) {
                            operation = '$operation✖';
                            symbol = 3;
                          }

                          if (meter1 == '') {
                            meter1 = meter1 + meter;
                            meter = '';
                          } else {
                            meter2 = meter2 + meter;
                            meter = '';
                          }

                          if (meter2 != '') {
                            calculations();
                          }
                        });
                      },
                      child: const Text('✖'),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 35),
                        foregroundColor: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          operation = '';
                          meter1 = '';
                          meter2 = '';
                          meter = '';
                          result = 0;
                          resultsize = 46;
                        });
                      },
                      child: const Text('C'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 35)),
                      onPressed: () {
                        if (meter1 == '') {
                          meter1 = meter1 + meter;
                          meter = '';
                        } else {
                          meter2 = meter2 + meter;
                          meter = '';
                        }
                        setState(() {
                          calculations();

                          meter2 = '';
                          meter1 = '';
                        });
                      },
                      child: const Text('＝'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 35)),
                      onPressed: () {
                        setState(() {
                          if (operation[operation.length - 1] != '+' &&
                              operation[operation.length - 1] != '÷' &&
                              operation[operation.length - 1] != '✖' &&
                              operation[operation.length - 1] != '﹣') {
                            operation = '$operation÷';
                            symbol = 4;
                          }

                          if (meter1 == '') {
                            meter1 = meter1 + meter;
                            meter = '';
                          } else {
                            meter2 = meter2 + meter;
                            meter = '';
                          }

                          if (meter2 != '') {
                            calculations();
                          }
                        });
                      },
                      child: const Text('÷'),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                alignment: Alignment.center,
                color: Colors.black38,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _incrementlang();
                        });
                      },
                      child: Text(lang1),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
