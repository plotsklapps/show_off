import 'package:showoff/all_imports.dart';

/*ALERT DIALOG FOR AVATARMENU*/
showAvatarMenu(BuildContext context) {
  // set up the button
  Widget dismissButton = TextButton(
    child: const Text('BACK'),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text('Settings'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.colorize),
          title: const Text('Change ThemeColor'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(
              context,
              'avatar',
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.email),
          title: const Text('Send Email'),
          onTap: () {
            Navigator.pushNamed(
              context,
              'emailsender',
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            Navigator.pushNamed(
              context,
              'settings',
            );
          },
        ),
      ],
    ),
    actions: [
      dismissButton,
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
