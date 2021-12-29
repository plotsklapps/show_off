import 'package:showoff/all_imports.dart';

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'A simple DICE app',
                speed: const Duration(
                  milliseconds: 200,
                ),
                textStyle: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              TypewriterAnimatedText(
                'Press a dice to change their value',
                speed: const Duration(
                  milliseconds: 200,
                ),
                textStyle: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              TypewriterAnimatedText(
                'The numbers appear at random',
                speed: const Duration(
                  milliseconds: 200,
                ),
                textStyle: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              8.0,
              0.0,
              8.0,
              0.0,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        0.0,
                        16.0,
                        0.0,
                        16.0,
                      ),
                      child: Image.asset(
                        'assets/images/dice/dice$leftDiceNumber.png',
                      ),
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        0.0,
                        16.0,
                        0.0,
                        16.0,
                      ),
                      child: Image.asset(
                        'assets/images/dice/dice$rightDiceNumber.png',
                      ),
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
