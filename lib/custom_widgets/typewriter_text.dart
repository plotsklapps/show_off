import 'package:showoff/all_imports.dart';

/*TYPEWRITER WIDGET*/
class TypeWriterWidget extends StatelessWidget {
  const TypeWriterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'Hi there!',
          speed: const Duration(
            milliseconds: 200,
          ),
          textStyle: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        TypewriterAnimatedText(
          'I\'m Jeremy',
          speed: const Duration(
            milliseconds: 200,
          ),
          textStyle: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        TypewriterAnimatedText(
          'Have a look around',
          speed: const Duration(
            milliseconds: 200,
          ),
          textStyle: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        TypewriterAnimatedText(
          'Hope to hear from you!',
          speed: const Duration(
            milliseconds: 200,
          ),
          textStyle: const TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
