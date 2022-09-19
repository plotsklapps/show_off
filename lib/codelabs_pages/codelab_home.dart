import 'package:showoff/all_imports.dart';

class CodelabHomePage extends StatelessWidget {
  const CodelabHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      constraints: const BoxConstraints(
                        maxHeight: 200.0,
                        maxWidth: 150.0,
                      ),
                      margin: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Flutter Codelab #1'),
                          const Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/screenshots/flutter_codelabs_1.png',
                                ),
                                height: 2498.0,
                                width: 1178.0,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              launchFlutterCodeLabGist1();
                            },
                            child: const Text('GitHub Gist'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      constraints: const BoxConstraints(
                        maxHeight: 200.0,
                        maxWidth: 150.0,
                      ),
                      margin: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Flutter Codelab #2'),
                          const Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/screenshots/flutter_codelabs_2.png',
                                ),
                                height: 2498.0,
                                width: 1178.0,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              launchFlutterCodeLabGist2();
                            },
                            child: const Text('GitHub Gist'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      constraints: const BoxConstraints(
                        maxHeight: 200.0,
                        maxWidth: 150.0,
                      ),
                      margin: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Flutter Codelab #3'),
                          const Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Image(
                                image: AssetImage(
                                  //TODO: Replace image!
                                  'assets/images/screenshots/flutter_codelabs_2.png',
                                ),
                                height: 2498.0,
                                width: 1178.0,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              launchFlutterCodeLabGist3();
                            },
                            child: const Text('GitHub Gist'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      constraints: const BoxConstraints(
                        maxHeight: 200.0,
                        maxWidth: 150.0,
                      ),
                      margin: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Flutter Building UI #1'),
                          const Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Image(
                                image: AssetImage(
                                  //TODO: Replace image!
                                  'assets/images/screenshots/flutter_codelabs_2.png',
                                ),
                                height: 2498.0,
                                width: 1178.0,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              launchFlutterBuildingUIGist1();
                            },
                            child: const Text('GitHub Gist'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void launchFlutterCodeLabGist1() async {
    if (!await launchUrl(flutterCodeLabGist1)) {
      throw 'Could not launch $flutterCodeLabGist1';
    }
  }

  void launchFlutterCodeLabGist2() async {
    if (!await launchUrl(flutterCodeLabGist2)) {
      throw 'Could not launch $flutterCodeLabGist2';
    }
  }

  void launchFlutterCodeLabGist3() async {
    if (!await launchUrl(flutterCodeLabGist3)) {
      throw 'Could not launch $flutterCodeLabGist3';
    }
  }

  void launchFlutterBuildingUIGist1() async {
    if (!await launchUrl(flutterBuildingUIGist1)) {
      throw 'Could not launch $flutterBuildingUIGist1';
    }
  }
}
