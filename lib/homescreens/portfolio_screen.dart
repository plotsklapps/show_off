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
                                'assets/icons/plotsklappsIcon.png',
                              ),
                            ),
                            title: Text('Flutter Bootcamp Projects'),
                            subtitle: Text(
                              'Learning path \'apps\'',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Everyone has got to start somewhere... right? Please have a look at my beginner projects which I\'ve styled to my liking. They should give you an impression of what I\'m capable of now!',
                            ),
                          ),
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 200.0,
                              autoPlay: true,
                              autoPlayCurve: Curves.easeInOutBack,
                              enlargeCenterPage: true,
                            ),
                            items: [
                              1,
                              2,
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          child: Image.asset(
                                            'assets/images/screenshots/flutter_bootcamp_project$i.png',
                                          ),
                                          onTap: () {
                                            if (i == 1) {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Dicee(),
                                                ),
                                              );
                                            } else if (i == 2) {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Xylophone(),
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 24.0,
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
                                'assets/icons/trdlToolIcon.png',
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
                                'assets/icons/plotsklappsIcon.png',
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
                                'assets/icons/plotsklappsIcon.png',
                              ),
                            ),
                            title: Text('Example 4'),
                            subtitle: Text(
                              'A fourth example will appear here',
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
