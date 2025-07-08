import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  applyElevationOverlayColor: false,
  brightness: Brightness.light,
  canvasColor: const Color(0xFFFAFAFB),
  cardColor: const Color(0xFFFAFAFB),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFFFFC107),
    foregroundColor: Color(0xFF111111),
  ),
  
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFFFC107),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFC107),
    onPrimaryContainer: Color(0xFF111111),
    secondary: Color(0xFF6B5D3F),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDF9A),
    onSecondaryContainer: Color(0xFF111111),
    tertiary: Color(0xFF4A6547),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFCCEBC4),
    onTertiaryContainer: Color(0xFF072109),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    surface: Color(0xFFFAFAFB),
    onSurface: Color(0xFF111111),
    surfaceContainerHighest: Color(0xFFF6ECDF),
    onSurfaceVariant: Color(0xFFFFC107),
    outline: Color(0xFFFFC107),
    outlineVariant: Color(0xFFD0C5B4),
    shadow: Color(0xFF111111),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFF111111),
    onInverseSurface: Color(0xFFF9EFE2),
    inversePrimary: Color(0xFFE9C16C),
    surfaceTint: Color(0xFFFFC107),
  ),
  disabledColor: const Color(0x61000000),
  dividerColor: const Color(0x1F111111),
  focusColor: const Color(0x1F000000),
  highlightColor: const Color(0x66BCBCBC),
  hintColor: const Color(0x99000000),
  hoverColor: const Color(0x0A000000),
  primaryColor: const Color(0xFFFFC107),
  primaryColorDark: const Color(0xFF1976D2),
  primaryColorLight: const Color(0xFFBBDEFB),
  scaffoldBackgroundColor: const Color(0xFFFAFAFB),
  secondaryHeaderColor: const Color(0xFFE3F2FD),
  shadowColor: const Color(0xFF000000),
  splashColor: const Color(0x66C8C8C8),
  unselectedWidgetColor: const Color(0x8A000000),
  useMaterial3: true,
  visualDensity: VisualDensity.compact,
  splashFactory: InkRipple.splashFactory,
  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

  // Button Theme
  buttonTheme: const ButtonThemeData(
    alignedDropdown: false,
    height: 36,
    layoutBehavior: ButtonBarLayoutBehavior.padded,
    minWidth: 88,
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.elliptical(2, 2)),
    ),
    textTheme: ButtonTextTheme.normal,
  ),

  // Elevated Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFFFC107),
      foregroundColor: Colors.white,
      minimumSize: const Size(64, 36),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ).copyWith(
      elevation: WidgetStateProperty.resolveWith<double?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.focused)) return 4;
        if (states.contains(WidgetState.hovered)) return 4;
        if (states.contains(WidgetState.pressed)) return 8;
        return 0;
      }),
      overlayColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.focused))
          return const Color(0x1AFFFFFF);
        if (states.contains(WidgetState.hovered))
          return const Color(0x14FFFFFF);
        if (states.contains(WidgetState.pressed))
          return const Color(0x1AFFFFFF);
        return null;
      }),
    ),
  ),

  // Icon Theme
  iconTheme: const IconThemeData(color: Color(0xDD000000)),
  primaryIconTheme: const IconThemeData(color: Color(0xFF000000)),

  // Input Decoration Theme
  inputDecorationTheme: const InputDecorationTheme(
    alignLabelWithHint: false,
    filled: false,
    isCollapsed: false,
    isDense: false,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.elliptical(8, 8)),
      borderSide: BorderSide(color: Color(0xFF000000), width: 1),
      gapPadding: 4,
    ),
  ),

  // Text Theme
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_300',
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_300',
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    displaySmall: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_regular',
      fontSize: 48,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    headlineLarge: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_regular',
      fontSize: 40,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headlineMedium: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_regular',
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headlineSmall: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_regular',
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_700',
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    titleMedium: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_600',
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_500',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      color: Color(0xFF474647),
      fontFamily: 'Inter_regular',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      color: Color(0xFF787776),
      fontFamily: 'Inter_regular',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      color: Color(0xFFADABAA),
      fontFamily: 'Inter_regular',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_500',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    labelMedium: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_regular',
      fontSize: 11,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
    labelSmall: TextStyle(
      color: Color(0xFF111111),
      fontFamily: 'Inter_regular',
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  ),
);
