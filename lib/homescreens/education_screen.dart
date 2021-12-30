import 'package:showoff/all_imports.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  _renderContent1(context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 18.0,
        bottom: 0.0,
      ),
      /*MAKES THE COLOR COMPLETELY TRANSPARENT*/
      color: const Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        front: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Divider(
                  thickness: 2.0,
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '2020',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Ionic & Angular',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: kOrangeFlame,
                    ),
                  ),
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Marc Opmeer - NHA',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2.0,
                ),
              ],
            ),
          ),
        ),
        back: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: GestureDetector(
                    child: ListTile(
                      leading: const Icon(
                        Icons.android_outlined,
                      ),
                      title: const Text('Show Diploma & Grade List'),
                      onTap: () {
                        /*CUSTOM_WIDGETS/ALERT_DIALOGS.DART*/
                        showIonicAngularDialog(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _renderContent2(context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 18.0,
        bottom: 0.0,
      ),
      /*MAKES THE COLOR COMPLETELY TRANSPARENT*/
      color: const Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        front: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Divider(
                  thickness: 2.0,
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '2021',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Flutter & Dart Bootcamp',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: kOrangeFlame,
                    ),
                  ),
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Angela Yu - Udemy',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2.0,
                ),
              ],
            ),
          ),
        ),
        back: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: GestureDetector(
                    child: const ListTile(
                      leading: Icon(
                        Icons.flutter_dash_outlined,
                      ),
                      title: Text('Show Certificate'),
                    ),
                    onTap: () {
                      /*CUSTOM_WIDGETS/ALERT_DIALOGS.DART*/
                      showFlutterBootcampDialog(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _renderContent3(context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 18.0,
        bottom: 0.0,
      ),
      /*MAKES THE COLOR COMPLETELY TRANSPARENT*/
      color: const Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        front: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Divider(
                  thickness: 2.0,
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '2021',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Dart from Novice to Expert',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: kOrangeFlame,
                    ),
                  ),
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Tiberiu Potec - Udemy',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2.0,
                ),
              ],
            ),
          ),
        ),
        back: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: GestureDetector(
                    child: ListTile(
                      leading: const Icon(
                        Icons.computer_outlined,
                      ),
                      title: const Text('Show Certificate'),
                      onTap: () {
                        /*CUSTOM_WIDGETS/ALERT_DIALOGS.DART*/
                        showDartNoviceExpertDialog(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _renderContent4(context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 18.0,
        bottom: 0.0,
      ),
      /*MAKES THE COLOR COMPLETELY TRANSPARENT*/
      color: const Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        front: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Divider(
                  thickness: 2.0,
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '2022',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Dart & Flutter Courses',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: kOrangeFlame,
                    ),
                  ),
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Bryan Cairns - Udemy',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2.0,
                ),
              ],
            ),
          ),
        ),
        back: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: GestureDetector(
                    child: ListTile(
                      leading: const Icon(
                        Icons.adb,
                      ),
                      title: const Text('Show Certificates'),
                      onTap: () {
                        /*CUSTOM_WIDGETS/ALERT_DIALOGS.DART*/
                        showDartFlutterCourseDialog(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*EDUCATIONSCREEN RENDERS THE CONTENTS SEPARATELY*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: _renderContent1(context),
          ),
          Expanded(
            child: _renderContent2(context),
          ),
          Expanded(
            child: _renderContent3(context),
          ),
          Expanded(
            child: _renderContent4(context),
          ),
        ],
      ),
    );
  }
}
