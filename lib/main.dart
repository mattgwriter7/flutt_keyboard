// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//  See:
//  https://api.flutter.dev/flutter/widgets/CallbackShortcuts-class.html

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ super.key });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //  page vars
  final String filename = 'main.dart';
  String key = '';

  @override
  void initState() {
    //HardwareKeyboard.instance.addHandler(_handleKey);
    super.initState();
  }

  @override
  void dispose() {
    //HardwareKeyboard.instance.removeHandler(_handleKey)
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: <ShortcutActivator, VoidCallback> {
         const SingleActivator(LogicalKeyboardKey.digit0): () {
          setState(() { key = '0'; });
        },       
        const SingleActivator(LogicalKeyboardKey.digit1): () {
          setState(() { key = '1'; });
        },
        const SingleActivator(LogicalKeyboardKey.digit2): () {
          setState(() { key = '2'; });
        },
        const SingleActivator(LogicalKeyboardKey.digit3): () {
          setState(() { key = '3'; });
        },
        const SingleActivator(LogicalKeyboardKey.digit4): () {
          setState(() { key = '4'; });
        },
        const SingleActivator(LogicalKeyboardKey.digit5): () {
          setState(() { key = '5'; });
        },
        const SingleActivator(LogicalKeyboardKey.digit6): () {
          setState(() { key = '6'; });
        },
        const SingleActivator(LogicalKeyboardKey.digit7): () {
          setState(() { key = '7'; });
        },
        const SingleActivator(LogicalKeyboardKey.digit8): () {
          setState(() { key = '8'; });
        },
        const SingleActivator(LogicalKeyboardKey.digit9): () {
          setState(() { key = '9'; });
        },
        const SingleActivator(LogicalKeyboardKey.enter): () {
          setState(() { key = 'ENTER'; });
        },
        const SingleActivator(LogicalKeyboardKey.backspace): () {
          setState(() { key = 'BACKSPACE'; });
        },
      },
      child: Focus(
        autofocus: true,
        child: Material(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('View NUMERIC keypresses in'),
                const Text('the console (plus BACKSPACE and ENTER)'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,0),
                  child: Text('"$key"'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
