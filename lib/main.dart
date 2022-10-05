import 'package:showoff/all_imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainEntry());
}

class MainEntry extends StatelessWidget {
  const MainEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plotsklapps Portfolio',
      theme: themeLight,
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
      routes: {
        'homescreen': (context) => const HomeScreen(),
        'emailsender': (context) => const EmailSender(),
      },
    );
  }
}
