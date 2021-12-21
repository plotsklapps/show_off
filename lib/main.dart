import 'package:showoff/all_imports.dart';

void main() {
  runApp(const MainEntry());
}

class MainEntry extends StatelessWidget {
  const MainEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plotsklapps Portfolio',
      theme: FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xff172734),
          primaryVariant: Color(0xff526e7f),
          secondary: Color(0xffd35a37),
          secondaryVariant: Color(0xff32434f),
          appBarColor: Color(0xff32434f),
          error: Color(0xffb00020),
        ),
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 35,
        appBarStyle: FlexAppBarStyle.primary,
        appBarOpacity: 0.85,
        appBarElevation: 6,
        transparentStatusBar: true,
        tabBarStyle: FlexTabBarStyle.forAppBar,
        tooltipsMatchBackground: true,
        swapColors: false,
        lightIsWhite: false,
        useSubThemes: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: GoogleFonts.questrial().fontFamily,
        subThemesData: const FlexSubThemesData(
          useTextTheme: true,
          fabUseShape: true,
          interactionEffects: true,
          bottomNavigationBarOpacity: 0.85,
          bottomNavigationBarElevation: 6,
          inputDecoratorIsFilled: true,
          inputDecoratorBorderType: FlexInputBorderType.outline,
          inputDecoratorUnfocusedHasBorder: true,
          blendOnColors: true,
          blendTextTheme: true,
          popupMenuOpacity: 0.95,
        ),
      ),
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
      routes: {
        'homescreen': (context) => const HomeScreen(),
        'emailsender': (context) => const EmailSender(),
      },
    );
  }
}
