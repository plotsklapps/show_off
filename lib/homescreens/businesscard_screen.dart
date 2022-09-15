import 'package:showoff/all_imports.dart';

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
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/icons/plotsklappsLogoApp.png',
                      ),
                    ),
                  ],
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
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.house,
                        color: kOrangeFlame,
                      ),
                      title: const Text('Visit my website'),
                    ),
                    onTap: () {
                      launchWebsite();
                    },
                  ),
                ),
                Card(
                  child: GestureDetector(
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.github,
                        color: kOrangeFlame,
                      ),
                      title: const Text('Clone my repo\'s'),
                    ),
                    onTap: () {
                      launchGithub();
                    },
                  ),
                ),
                Card(
                  child: GestureDetector(
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.slack,
                        color: kOrangeFlame,
                      ),
                      title: const Text('Read my blog'),
                    ),
                    onTap: () {
                      launchHashnode();
                    },
                  ),
                ),
                Card(
                  child: GestureDetector(
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.twitter,
                        color: kOrangeFlame,
                      ),
                      title: const Text('Find me on Twitter'),
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
    if (!await launchUrl(websiteURL)) {
      throw 'Could not launch $websiteURL';
    }
  }

  void launchGithub() async {
    if (!await launchUrl(githubURL)) {
      throw 'Could not launch $githubURL';
    }
  }

  void launchHashnode() async {
    if (!await launchUrl(hashnodeURL)) {
      throw 'Could not launch $hashnodeURL';
    }
  }

  void launchTwitter() async {
    if (!await launchUrl(twitterURL)) {
      throw 'Could not launch $twitterURL';
    }
  }
}
