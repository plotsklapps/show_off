import 'package:showoff/all_imports.dart';

showDartNoviceExpertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text('OK'),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text('Dart Novice to Expert'),
    content: const SingleChildScrollView(
      child: Column(
        children: [
          Image(
            image: AssetImage(
              'assets/images/certificates/DartNoviceExpertDiploma.jpg',
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
