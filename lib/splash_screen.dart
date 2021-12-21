import 'package:showoff/all_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    timer = Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SpinKitDoubleBounce(
            color: kOrangeFlame,
            size: double.infinity,
          ),
          const CircleAvatar(
            radius: 24.0,
            backgroundImage: AssetImage(
              'assets/icons/plotsklappsIcon.png',
            ),
          )
        ],
      ),
    );
  }
}
