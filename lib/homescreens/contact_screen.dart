import 'package:showoff/all_imports.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Do you want to know more about the endless possibilities with Flutter & Dart? \n\nDon\'t hesitate to press the button below to contact me!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SpinKitDoubleBounce(
                  color: kOrangeFlame,
                  size: 50.0,
                ),
                GestureDetector(
                  child: const Icon(
                    FontAwesomeIcons.rocketchat,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      'emailsender',
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
