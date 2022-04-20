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
