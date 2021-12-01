import 'package:showoff/all_imports.dart';

String trdlToolURL =
    'https://play.google.com/store/apps/details?id=nl.plotsklapps.trdl_tool';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.googlePlay),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: Text(
                        'I have built apps for Android and iOS. Check out the examples below to see what I can do for you!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Icon(FontAwesomeIcons.appStore),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                18.0,
                0.0,
                18.0,
                0.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Column(
                        children: [
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/icons/plotsklappsiconblack.png',
                              ),
                            ),
                            title: Text('TRDL-tool'),
                            subtitle: Text(
                              'Train dispatchers tool (NL)',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'An application for train dispatchers in the Netherlands to quickly access their work instructions and background information. It includes a fast-paced quiz to test their knowledge and a chat functionality to contact each other',
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  launchTrdlTool();
                                },
                                child: const Text('GOOGLE PLAY'),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Perform some action
                                },
                                child: const Text('APPLE APPSTORE'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                18.0,
                0.0,
                18.0,
                0.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Column(
                        children: [
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/icons/plotsklappsiconblack.png',
                              ),
                            ),
                            title: Text('Example 2'),
                            subtitle: Text(
                              'A second example will appear here',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Lorem ipsum...',
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Perform some action
                                },
                                child: const Text('GOOGLE PLAY'),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Perform some action
                                },
                                child: const Text('APPLE APPSTORE'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                18.0,
                0.0,
                18.0,
                0.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Column(
                        children: [
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/icons/plotsklappsiconblack.png',
                              ),
                            ),
                            title: Text('Example 3'),
                            subtitle: Text(
                              'A third example will appear here',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Lorem ipsum...',
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Perform some action
                                },
                                child: const Text('GOOGLE PLAY'),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Perform some action
                                },
                                child: const Text('APPLE APPSTORE'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launchTrdlTool() async {
    if (!await launch(trdlToolURL)) {
      throw 'Could not launch $trdlToolURL';
    }
  }
}
