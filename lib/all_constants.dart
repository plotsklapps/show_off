import 'package:showoff/all_imports.dart';

Color kColorDarkGreen = const Color(0xFF004E15);
Color kColorMediumGreen = const Color(0xFF669573);
Color kColorLightGreen = const Color(0xFFEDF2EE);
Color kColorErrorRed = const Color(0xFF790000);

Color kOrangeFlame = const Color(0xFFD35A27);
Color kGreyGunmetal = const Color(0xff172734);
Color kGreyCharcoal = const Color(0xff32434f);
Color kGreyElectricBlue = const Color(0xff526e7f);

const kDarkGreen = 0xFF004E14;
const kLightGreen = 0xFF738E7E;
const kSecondaryGreen = 0xFF2F3E32;

/*CHATSCREEN CONSTANTS*/
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
