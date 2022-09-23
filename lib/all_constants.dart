import 'package:showoff/all_imports.dart';

/*APP COLOR CONSTANTS*/
Color kOrangeFlame = const Color(0xFFD35A27);
Color kGreyGunmetal = const Color(0xff172734);
Color kGreyCharcoal = const Color(0xff32434f);
Color kGreyElectricBlue = const Color(0xff526e7f);
Color kBackGroundGrey = const Color(0xffdedede);

/*CONTACTSCREEN CONSTANTS*/
late String hintText;

const kSendButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 28.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Typ your message here...',
);

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

/*URL LAUNCHER CONSTANTS*/
final Uri trdlToolURL = Uri.parse(
  'https://play.google.com/store/apps/details?id=nl.plotsklapps.trdl_tool',
);
final Uri showOffURL = Uri.parse(
  'https://play.google.com/store/apps/details?id=nl.plotsklapps.showoff',
);
final Uri websiteURL = Uri.parse(
  'https://plotsklapps.github.io/',
);
final Uri githubURL = Uri.parse(
  'https://github.com/plotsklapps',
);
final Uri hashnodeURL = Uri.parse(
  'https://plotsklapps.hashnode.dev/',
);
final Uri twitterURL = Uri.parse(
  'https://twitter.com/plotsklapps',
);
final Uri flutterCodeLabGist1 = Uri.parse(
  'https://gist.github.com/plotsklapps/60791f17a3feeda97978618863f09e03',
);
final Uri flutterCodeLabGist2 = Uri.parse(
  'https://gist.github.com/plotsklapps/27f4c7767d7e5a0af706945aaeb03735',
);
final Uri flutterCodeLabGist3 = Uri.parse(
  'https://gist.github.com/plotsklapps/4a8c1eb35125ed8923c80ba6fd408ded',
);
final Uri flutterBuildingUIGist1 = Uri.parse(
  'https://gist.github.com/plotsklapps/929cd696ecf000c1d6aae72c9084366a',
);
final Uri flutterBuildingUIGist2 = Uri.parse(
  'https://gist.github.com/plotsklapps/fcc1a060b0c370e64f9f86cce4aba99a',
);
final Uri flutterBuildingUIGist3 = Uri.parse(
  'https://gist.github.com/plotsklapps/2104e45c27d681baa5c35289291b4f70',
);
final Uri flutterRouletteGist1 = Uri.parse(
  'https://gist.github.com/plotsklapps/88f96944fbf2a8509a61e7746689db8f',
);
final Uri flutterRouletteGist2 = Uri.parse(
  'https://gist.github.com/plotsklapps/15f6abde795336ecea4b2d37ae42a989',
);
final Uri flutterRouletteGist3 = Uri.parse(
  'https://gist.github.com/plotsklapps/dfb5050793b5d28cbdba5bed57f5a610',
);
final Uri flutterRouletteGist4 = Uri.parse(
  //TODO: Link aanpassen naar Flutter Coding Roulette #4!
  'https://gist.github.com/plotsklapps/dfb5050793b5d28cbdba5bed57f5a610',
);

/*SNACKBAR CONSTANTS*/
const noAppleSorry = SnackBar(
  content: Text(
    'I\'m poor. I cannot afford a MacBook yet to develop for Apple, but stay tuned!',
  ),
);

const noAppYet = SnackBar(
  content: Text(
    'This badge will redirect you to the app as soon as it\'s online!',
  ),
);
