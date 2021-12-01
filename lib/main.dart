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
        scheme: FlexScheme.jungle,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 25,
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
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.jungle,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 25,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.85,
        appBarElevation: 6,
        transparentStatusBar: true,
        tabBarStyle: FlexTabBarStyle.forAppBar,
        tooltipsMatchBackground: true,
        swapColors: false,
        darkIsTrueBlack: false,
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
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
      routes: {
        'homescreen': (context) => const HomeScreen(),
        'emailsender': (context) => const EmailSender(),
      },
    );
  }
}
