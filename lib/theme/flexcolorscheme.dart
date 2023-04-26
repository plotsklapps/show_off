import 'package:showoff/all_imports.dart';

ThemeData themeLight = FlexThemeData.light(
  scheme: FlexScheme.outerSpace,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 12,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    blendTextTheme: true,
    useM2StyleDividerInM3: true,
    thinBorderWidth: 2.0,
    thickBorderWidth: 4.0,
    defaultRadius: 24.0,
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: GoogleFonts.questrial().fontFamily,
);

ThemeData themeDark = FlexThemeData.dark(
  scheme: FlexScheme.outerSpace,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useM2StyleDividerInM3: true,
    defaultRadius: 24.0,
    thinBorderWidth: 2.0,
    thickBorderWidth: 4.0,
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: GoogleFonts.questrial().fontFamily,
);
