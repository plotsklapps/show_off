import 'package:showoff/all_imports.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                24.0,
                24.0,
                24.0,
                12.0,
              ),
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
                      elevation: 6.0,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: const AssetImage(
                                'assets/icons/trdlToolIcon.png',
                              ),
                              backgroundColor: kBackGroundGrey,
                            ),
                            title: const Text('TRDL-tool'),
                            subtitle: const Text(
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
                            alignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  'assets/icons/playstore_badge.png',
                                  scale: 5.0,
                                ),
                                onTap: () {
                                  launchTrdlTool();
                                },
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  'assets/icons/appstore_badge.png',
                                  scale: 8.0,
                                ),
                                onTap: () {
                                  /*ALL_CONSTANTS.DART*/
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(noAppleSorry);
                                },
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
                      elevation: 6.0,
                      child: Column(
                        children: [
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/icons/plotsklappsIcon.png',
                              ),
                            ),
                            title: Text(
                              'ShowOff',
                            ),
                            subtitle: Text(
                              'Personal Portfolio',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'What you see before you! It\'s my curriculum vitae in mobile development, the app in which I try out new and exciting Flutter tools and work on my skills for animations, user interface/experience and back-end.',
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  'assets/icons/playstore_badge.png',
                                  scale: 5.0,
                                ),
                                onTap: () {
                                  launchShowOff();
                                },
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  'assets/icons/appstore_badge.png',
                                  scale: 8.0,
                                ),
                                onTap: () {
                                  /*ALL_CONSTANTS.DART*/
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(noAppleSorry);
                                },
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
                      elevation: 6.0,
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
                              'Learningpath \'apps\'',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Everyone has got to start somewhere... right? Please have a look at my beginner projects which I\'ve styled to my liking. They should give you an impression of what I\'ve learned through my courses and bootcamps!',
                            ),
                          ),
                          /*CAROUSELSLIDER*/
                          CarouselSlider(
                            options: CarouselOptions(
                              aspectRatio: 16 / 16,
                              autoPlay: true,
                              autoPlayInterval: const Duration(
                                seconds: 2,
                              ),
                              autoPlayCurve: Curves.easeInOutBack,
                              enlargeCenterPage: true,
                            ),
                            /*ADD ITEM TO INCREASE LIST AND THEN ADD SCREENSHOTIMAGE TO ASSETS*/
                            items: [
                              1,
                              2,
                              3,
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
                                            /*MAKE THE CAROUSEL GO TO APP WHEN PRESSED ON CORRESPONDING IMAGE*/
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
                                            } else if (i == 3) {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BMIinput(),
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
                      elevation: 6.0,
                      child: Column(
                        children: [
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/icons/plotsklappsIcon.png',
                              ),
                            ),
                            title: Text('Flutter CodeLabs'),
                            subtitle: Text(
                              'Online Education',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Online codelabs by Google and RomanJustCodes are great resources to keep practising Flutter skills.\nI\'ve added them to my GitHub Gists page to show my consistency in expanding and maintaining my knowledge of Dart & Flutter!',
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const CodelabHomePage(),
                                ),
                              );
                            },
                            child: const Text('Check out Codelab Gists'),
                          ),
                          const SizedBox(height: 8.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }

  void launchTrdlTool() async {
    if (!await launchUrl(trdlToolURL)) {
      throw 'Could not launch $trdlToolURL';
    }
  }

  void launchShowOff() async {
    if (!await launchUrl(showOffURL)) {
      throw 'Could not launch $showOffURL';
    }
  }
}
