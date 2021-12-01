import 'package:showoff/all_imports.dart';

String websiteURL = 'https://plotsklapps.jimdosite.com/';
String githubURL = 'https://github.com/plotsklapps';
String hashnodeURL = 'https://plotsklapps.hashnode.dev/';
String twitterURL = 'https://twitter.com/plotsklapps';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({Key? key}) : super(key: key);

  _renderContent(context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 18.0,
        bottom: 0.0,
      ),
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
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    ':plotsklapps',
                    style: TextStyle(
                      fontSize: 64.0,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2.0,
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontSize: 48.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 24.0,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ScaleAnimatedText(
                          'Tap me!',
                          textStyle: const TextStyle(),
                        ),
                      ],
                      repeatForever: true,
                    ),
                  ),
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
                        FontAwesomeIcons.home,
                      ),
                      title: Text('Visit my website'),
                    ),
                    onTap: () {
                      launchWebsite();
                    },
                  ),
                ),
                Card(
                  child: GestureDetector(
                    child: const ListTile(
                      leading: Icon(
                        FontAwesomeIcons.github,
                      ),
                      title: Text('Clone my repo\'s'),
                    ),
                    onTap: () {
                      launchGithub();
                    },
                  ),
                ),
                Card(
                  child: GestureDetector(
                    child: const ListTile(
                      leading: Icon(
                        FontAwesomeIcons.slackHash,
                      ),
                      title: Text('Read my blog'),
                    ),
                    onTap: () {
                      launchHashnode();
                    },
                  ),
                ),
                Card(
                  child: GestureDetector(
                    child: const ListTile(
                      leading: Icon(
                        FontAwesomeIcons.twitter,
                      ),
                      title: Text('Find me on Twitter'),
                    ),
                    onTap: () {
                      launchTwitter();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Expanded(
                flex: 1,
                child: Center(
                  child: TypeWriterWidget(),
                ),
              ),
              Expanded(
                flex: 4,
                child: _renderContent(context),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          )
        ],
      ),
    );
  }

  void launchWebsite() async {
    if (!await launch(websiteURL)) {
      throw 'Could not launch $websiteURL';
    }
  }

  void launchGithub() async {
    if (!await launch(githubURL)) {
      throw 'Could not launch $githubURL';
    }
  }

  void launchHashnode() async {
    if (!await launch(hashnodeURL)) {
      throw 'Could not launch $hashnodeURL';
    }
  }

  void launchTwitter() async {
    if (!await launch(twitterURL)) {
      throw 'Could not launch $twitterURL';
    }
  }
}
