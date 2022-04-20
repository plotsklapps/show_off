import 'package:showoff/all_imports.dart';

showDartFlutterCourseDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text('OK'),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text('Dart & Flutter'),
    content: SingleChildScrollView(
      child: Column(
        children: const [
          Image(
            image: AssetImage(
              'assets/images/certificates/DartBeginners.jpg',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Image(
            image: AssetImage(
              'assets/images/certificates/FlutterBeginners.jpg',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Image(
            image: AssetImage(
              'assets/images/certificates/DartIntermediate.jpg',
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
