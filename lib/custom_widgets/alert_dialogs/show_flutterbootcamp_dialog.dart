import 'package:showoff/all_imports.dart';

showFlutterBootcampDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text('OK'),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text('Flutter & Dart Bootcamp'),
    content: const SingleChildScrollView(
      child: Column(
        children: [
          Image(
            image: AssetImage(
              'assets/images/certificates/FlutterBootcamp2021Diploma.jpg',
            ),
          ),
        ],
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
