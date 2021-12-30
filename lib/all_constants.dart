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
String websiteURL = 'https://plotsklapps.github.io/';
String githubURL = 'https://github.com/plotsklapps';
String hashnodeURL = 'https://plotsklapps.hashnode.dev/';
String twitterURL = 'https://twitter.com/plotsklapps';
String trdlToolURL =
    'https://play.google.com/store/apps/details?id=nl.plotsklapps.trdl_tool';
String showOffURL =
    'https://play.google.com/store/apps/details?id=nl.plotsklapps.showoff';

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
