import 'package:showoff/all_imports.dart';

/*ALERT DIALOG FOR AVATARMENU*/
showAvatarMenu(BuildContext context) {
  // set up the button
  Widget stayButton = TextButton(
    child: const Text('OK'),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  Widget logoutButton = TextButton(
    child: const Text('LOG OUT'),
    onPressed: () {
      Navigator.pushReplacementNamed(
        context,
        'homescreen',
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text('Current user:'),
    content: const Text('Login functionality coming soon!'),
    actions: [
      logoutButton,
      stayButton,
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

/*ALERT DIALOGS FOR EDUCATION*/
showIonicAngularDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text('OK'),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text('NHA Ionic & Angular'),
    content: SingleChildScrollView(
      child: Column(
        children: const [
          Image(
            image: AssetImage(
              'assets/images/certificates/IonicNHADiploma.jpg',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Image(
            image: AssetImage(
              'assets/images/certificates/IonicNHACijferlijst.jpg',
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
    content: SingleChildScrollView(
      child: Column(
        children: const [
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
    content: SingleChildScrollView(
      child: Column(
        children: const [
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
