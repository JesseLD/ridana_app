import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  applyElevationOverlayColor: true,
  brightness: Brightness.dark,
  canvasColor: const Color(0xFF121212),
  cardColor: const Color(0xFF1E1E1E),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    foregroundColor: Color(0xFFFFC107), // Light version of your primary
    elevation: 0,
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFE9C16C), // primaryFixedDim from light theme
    onPrimary: Color(0xFF1E1E1E),
    primaryContainer: Color(0xFF5B4300), // onPrimaryFixedVariant from light
    onPrimaryContainer: Color(0xFFFFC107), // primaryFixed from light
    secondary: Color(0xFFD8C4A0), // secondaryFixedDim from light
    onSecondary: Color(0xFF1E1E1E),
    secondaryContainer: Color(0xFF52452A), // onSecondaryFixedVariant from light
    onSecondaryContainer: Color(0xFFF5E0BB), // secondaryFixed from light
    tertiary: Color(0xFFB0CFAA), // tertiaryFixedDim from light
    onTertiary: Color(0xFF1E1E1E),
    tertiaryContainer: Color(0xFF334D31), // onTertiaryFixedVariant from light
    onTertiaryContainer: Color(0xFFCCEBC4), // tertiaryFixed from light
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6), // onInverseSurface from light
    surface: Color(0xFF1E1E1E),
    onSurface: Color(0xFFF9EFE2), // onInverseSurface from light
    surfaceContainerHighest: Color(0xFF2E2E2E),
    onSurfaceVariant: Color(0xFFE9C16C), // inversePrimary from light
    outline: Color(0xFFE9C16C), // inversePrimary from light
    outlineVariant: Color(0xFF4E4537), // Darkened version of outlineVariant
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFF9EFE2), // onInverseSurface from light
    onInverseSurface: Color(0xFF111111), // inverseSurface from light
    inversePrimary: Color(0xFFFFC107), // primary from light
    surfaceTint: Color(0xFFE9C16C),
  ),
  disabledColor: const Color(0x61FFFFFF),
  dividerColor: const Color(0x1FF9EFE2),
  focusColor: const Color(0x1FFFFFFF),
  highlightColor: const Color(0x40CCCCCC),
  hintColor: const Color(0x99FFFFFF),
  hoverColor: const Color(0x0AFFFFFF),
  primaryColor: const Color(0xFFE9C16C),
  primaryColorDark: const Color(0xFF1565C0),
  primaryColorLight: const Color(0xFF42A5F5),
  scaffoldBackgroundColor: const Color(0xFF121212),
  secondaryHeaderColor: const Color(0xFF1D3651),
  shadowColor: const Color(0xFF000000),
  splashColor: const Color(0x40C8C8C8),
  unselectedWidgetColor: const Color(0x8AFFFFFF),
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
      backgroundColor: const Color(0xFFE9C16C), // primaryFixedDim from light
      foregroundColor: const Color(0xFF1E1E1E), // Dark background
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
          return const Color(0x1A000000);
        if (states.contains(WidgetState.hovered))
          return const Color(0x14000000);
        if (states.contains(WidgetState.pressed))
          return const Color(0x1A000000);
        return null;
      }),
    ),
  ),

  // Icon Theme
  iconTheme: const IconThemeData(color: Color(0xDDF9EFE2)),
  primaryIconTheme: const IconThemeData(color: Color(0xFFF9EFE2)),

  // Input Decoration Theme
  inputDecorationTheme: const InputDecorationTheme(
    alignLabelWithHint: false,
    filled: true,
    fillColor: Color(0xFF2E2E2E),
    isCollapsed: false,
    isDense: false,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.elliptical(8, 8)),
      borderSide: BorderSide(color: Color(0xFFE9C16C), width: 1),
      gapPadding: 4,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF4E4537), width: 1),
    ),
    labelStyle: TextStyle(color: Color(0xFFE9C16C)),
    hintStyle: TextStyle(color: Color(0x99F9EFE2)),
  ),

  // Text Theme
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_300',
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_300',
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    displaySmall: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_regular',
      fontSize: 48,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    headlineLarge: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_regular',
      fontSize: 40,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headlineMedium: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_regular',
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headlineSmall: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_regular',
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_700',
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    titleMedium: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_600',
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      color: Color(0xFFE9C16C), // Accent color for small titles
      fontFamily: 'Inter_500',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      color: Color(0xFFD0C5B4), // Lighter text for better readability
      fontFamily: 'Inter_regular',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      color: Color(0xFFB8B5B0),
      fontFamily: 'Inter_regular',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      color: Color(0xFF9E9C99),
      fontFamily: 'Inter_regular',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_500',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    labelMedium: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_regular',
      fontSize: 11,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
    labelSmall: TextStyle(
      color: Color(0xFFF9EFE2),
      fontFamily: 'Inter_regular',
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  ),
);
