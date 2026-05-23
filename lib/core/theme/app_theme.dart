import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // ═══════════════════════════════════════════════════════════════════════════
  // LIGHT THEME - Deep Navy, Calm, Sophisticated
  // ═══════════════════════════════════════════════════════════════════════════
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // Color Scheme - Deep Navy primary with teal and gold accents
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.deepNavy,
      brightness: Brightness.light,
      primary: AppColors.deepNavy,
      onPrimary: Colors.white,
      primaryContainer: AppColors.deepNavyLight.withOpacity(0.2),
      onPrimaryContainer: AppColors.deepNavyDark,
      secondary: AppColors.softTeal,
      onSecondary: Colors.white,
      secondaryContainer: AppColors.softTealLight.withOpacity(0.3),
      onSecondaryContainer: AppColors.softTealDark,
      tertiary: AppColors.warmGold,
      onTertiary: AppColors.textPrimary,
      tertiaryContainer: AppColors.warmGoldLight.withOpacity(0.3),
      onTertiaryContainer: AppColors.warmGoldDark,
      surface: AppColors.backgroundLight,
      onSurface: AppColors.textPrimary,
      surfaceContainerHighest: Colors.white,
      onSurfaceVariant: AppColors.textSecondary,
      outline: AppColors.dividerLight,
      outlineVariant: AppColors.dividerLight.withOpacity(0.5),
      error: AppColors.errorLight,
      onError: Colors.white,
    ),

    // Scaffold background
    scaffoldBackgroundColor: AppColors.backgroundLight,

    // Typography - Balanced, readable with calm feel
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: AppColors.textPrimary,
        height: 1.2,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.3,
        color: AppColors.textPrimary,
        height: 1.25,
      ),
      headlineLarge: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.3,
        color: AppColors.textPrimary,
        height: 1.3,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.2,
        color: AppColors.textPrimary,
        height: 1.3,
      ),
      headlineSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.2,
        color: AppColors.textPrimary,
        height: 1.35,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.1,
        color: AppColors.textPrimary,
        height: 1.4,
      ),
      titleMedium: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: AppColors.textPrimary,
        height: 1.4,
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: AppColors.textPrimary,
        height: 1.45,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: AppColors.textPrimary,
        height: 1.5,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: AppColors.textPrimary,
        height: 1.5,
      ),
      bodySmall: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.2,
        color: AppColors.textSecondary,
        height: 1.5,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: AppColors.textPrimary,
        height: 1.4,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
        color: AppColors.textPrimary,
        height: 1.4,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
        color: AppColors.textSecondary,
        height: 1.4,
      ),
    ),

    // Card theme - Soft, organic corners
    cardTheme: CardThemeData(
      elevation: AppColors.elevationCard,
      shadowColor: AppColors.deepNavy.withOpacity(0.08),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusCard),
      ),
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
    ),

    // App bar theme - Clean, minimal
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: AppColors.elevationAppBarScrolled,
      backgroundColor: AppColors.backgroundLight,
      surfaceTintColor: Colors.transparent,
      foregroundColor: AppColors.textPrimary,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.2,
        color: AppColors.textPrimary,
      ),
      iconTheme: IconThemeData(
        color: AppColors.textPrimary,
        size: AppColors.iconMedium,
      ),
    ),

    // Button themes - Soft, rounded
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(120, 52),
        elevation: AppColors.elevationButton,
        shadowColor: AppColors.deepNavy.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusButton),
        ),
        backgroundColor: AppColors.deepNavy,
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(120, 52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusButton),
        ),
        side: BorderSide(color: AppColors.deepNavy, width: 1.5),
        foregroundColor: AppColors.deepNavy,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusButton),
        ),
        foregroundColor: AppColors.deepNavy,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
        ),
      ),
    ),

    // Floating Action Button - Soft, prominent
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.deepNavy,
      foregroundColor: Colors.white,
      elevation: AppColors.elevationFab,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusLarge),
      ),
    ),

    // Bottom navigation - Clean, minimal
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: AppColors.deepNavy.withOpacity(0.12),
      height: 68,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: AppColors.elevationBottomNav,
      shadowColor: AppColors.deepNavy.withOpacity(0.1),
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.deepNavy,
            );
          }
          return TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.textSecondary,
          );
        },
      ),
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(
              color: AppColors.deepNavy,
              size: AppColors.iconMedium,
            );
          }
          return IconThemeData(
            color: AppColors.textSecondary,
            size: AppColors.iconMedium,
          );
        },
      ),
    ),

    // Input decoration - Soft borders
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusButton),
        borderSide: BorderSide(color: AppColors.dividerLight),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusButton),
        borderSide: BorderSide(color: AppColors.dividerLight),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusButton),
        borderSide: BorderSide(color: AppColors.deepNavy, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusButton),
        borderSide: BorderSide(color: AppColors.errorLight),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppColors.spacingMedium,
        vertical: AppColors.spacingMedium,
      ),
      hintStyle: TextStyle(color: AppColors.textTertiary),
    ),

    // Chip theme - Rounded, organic
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.backgroundLightAlt,
      selectedColor: AppColors.deepNavy.withOpacity(0.12),
      labelStyle: TextStyle(
        color: AppColors.textPrimary,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
      secondaryLabelStyle: TextStyle(color: AppColors.deepNavy),
      brightness: Brightness.light,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusChip),
      ),
      side: BorderSide(color: Colors.transparent),
      padding: EdgeInsets.symmetric(
        horizontal: AppColors.spacingSmall,
        vertical: AppColors.spacingXSmall,
      ),
    ),

    // Progress indicator
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.deepNavy,
      linearTrackColor: AppColors.deepNavy.withOpacity(0.12),
      circularTrackColor: AppColors.deepNavy.withOpacity(0.12),
    ),

    // Slider theme - Smooth, calming
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.deepNavy,
      inactiveTrackColor: AppColors.deepNavy.withOpacity(0.2),
      thumbColor: AppColors.deepNavy,
      overlayColor: AppColors.deepNavy.withOpacity(0.1),
      trackHeight: 4,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
    ),

    // Divider theme
    dividerTheme: DividerThemeData(
      color: AppColors.dividerLight,
      thickness: 1,
      space: AppColors.spacingMedium,
    ),

    // Dialog theme - Soft, rounded
    dialogTheme: DialogThemeData(
      backgroundColor: Colors.white,
      elevation: AppColors.elevationDialog,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusXLarge),
      ),
    ),

    // Bottom sheet theme - Soft corners
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      elevation: AppColors.elevationDialog,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppColors.radiusXLarge),
        ),
      ),
    ),

    // Snackbar theme
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.surfaceDark,
      contentTextStyle: TextStyle(color: AppColors.textPrimaryDark),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusCard),
      ),
      behavior: SnackBarBehavior.floating,
    ),

    // Switch theme
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.deepNavy;
          }
          return AppColors.textTertiary;
        },
      ),
      trackColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.deepNavy.withOpacity(0.4);
          }
          return AppColors.dividerLight;
        },
      ),
    ),

    // Checkbox theme
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.deepNavy;
          }
          return Colors.transparent;
        },
      ),
      checkColor: WidgetStateProperty.all(Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),

    // Radio theme
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.deepNavy;
          }
          return AppColors.textSecondary;
        },
      ),
    ),

    // List tile theme
    listTileTheme: ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppColors.spacingMedium,
        vertical: AppColors.spacingSmall,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusCard),
      ),
    ),

    // Icon theme
    iconTheme: IconThemeData(
      color: AppColors.textSecondary,
      size: AppColors.iconMedium,
    ),

    // Primary icon theme
    primaryIconTheme: IconThemeData(
      color: AppColors.deepNavy,
      size: AppColors.iconMedium,
    ),
  );

  // ═══════════════════════════════════════════════════════════════════════════
  // DARK THEME - Deep Midnight, Serene Night
  // ═══════════════════════════════════════════════════════════════════════════
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // Color Scheme - Navy Light for dark mode visibility
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.deepNavyLight,
      brightness: Brightness.dark,
      primary: AppColors.deepNavyLight,
      onPrimary: AppColors.backgroundDark,
      primaryContainer: AppColors.deepNavy.withOpacity(0.3),
      onPrimaryContainer: AppColors.deepNavyLight,
      secondary: AppColors.softTealLight,
      onSecondary: AppColors.backgroundDark,
      secondaryContainer: AppColors.softTeal.withOpacity(0.3),
      onSecondaryContainer: AppColors.softTealLight,
      tertiary: AppColors.warmGoldLight,
      onTertiary: AppColors.backgroundDark,
      tertiaryContainer: AppColors.warmGold.withOpacity(0.3),
      onTertiaryContainer: AppColors.warmGoldLight,
      surface: AppColors.surfaceDark,
      onSurface: AppColors.textPrimaryDark,
      surfaceContainerHighest: AppColors.surfaceDarkAlt,
      onSurfaceVariant: AppColors.textSecondaryDark,
      outline: AppColors.dividerDark,
      outlineVariant: AppColors.dividerDark.withOpacity(0.5),
      error: AppColors.errorDark,
      onError: AppColors.backgroundDark,
    ),

    // Scaffold background
    scaffoldBackgroundColor: AppColors.backgroundDark,

    // Typography - Balanced, readable (dark theme)
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: AppColors.textPrimaryDark,
        height: 1.2,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.3,
        color: AppColors.textPrimaryDark,
        height: 1.25,
      ),
      headlineLarge: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.3,
        color: AppColors.textPrimaryDark,
        height: 1.3,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.2,
        color: AppColors.textPrimaryDark,
        height: 1.3,
      ),
      headlineSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.2,
        color: AppColors.textPrimaryDark,
        height: 1.35,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.1,
        color: AppColors.textPrimaryDark,
        height: 1.4,
      ),
      titleMedium: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: AppColors.textPrimaryDark,
        height: 1.4,
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: AppColors.textPrimaryDark,
        height: 1.45,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: AppColors.textPrimaryDark,
        height: 1.5,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: AppColors.textPrimaryDark,
        height: 1.5,
      ),
      bodySmall: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.2,
        color: AppColors.textSecondaryDark,
        height: 1.5,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: AppColors.textPrimaryDark,
        height: 1.4,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
        color: AppColors.textPrimaryDark,
        height: 1.4,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
        color: AppColors.textSecondaryDark,
        height: 1.4,
      ),
    ),

    // Card theme - Subtle elevation in dark
    cardTheme: CardThemeData(
      elevation: AppColors.elevationCardDark,
      shadowColor: Colors.black.withOpacity(0.3),
      color: AppColors.surfaceDark,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusCard),
      ),
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: AppColors.elevationAppBarScrolled,
      backgroundColor: AppColors.backgroundDark,
      surfaceTintColor: Colors.transparent,
      foregroundColor: AppColors.textPrimaryDark,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.2,
        color: AppColors.textPrimaryDark,
      ),
      iconTheme: IconThemeData(
        color: AppColors.textPrimaryDark,
        size: AppColors.iconMedium,
      ),
    ),

    // Button themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(120, 52),
        elevation: AppColors.elevationButton,
        shadowColor: AppColors.deepNavyLight.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusButton),
        ),
        backgroundColor: AppColors.deepNavyLight,
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(120, 52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusButton),
        ),
        side: BorderSide(color: AppColors.deepNavyLight, width: 1.5),
        foregroundColor: AppColors.deepNavyLight,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusButton),
        ),
        foregroundColor: AppColors.deepNavyLight,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
        ),
      ),
    ),

    // Floating Action Button
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.deepNavyLight,
      foregroundColor: Colors.white,
      elevation: AppColors.elevationFab,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusLarge),
      ),
    ),

    // Bottom navigation
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: AppColors.deepNavyLight.withOpacity(0.2),
      height: 68,
      backgroundColor: AppColors.surfaceDark,
      surfaceTintColor: Colors.transparent,
      elevation: AppColors.elevationBottomNav,
      shadowColor: Colors.black.withOpacity(0.3),
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.deepNavyLight,
            );
          }
          return TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.textSecondaryDark,
          );
        },
      ),
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(
              color: AppColors.deepNavyLight,
              size: AppColors.iconMedium,
            );
          }
          return IconThemeData(
            color: AppColors.textSecondaryDark,
            size: AppColors.iconMedium,
          );
        },
      ),
    ),

    // Input decoration
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceDarkAlt,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusButton),
        borderSide: BorderSide(color: AppColors.dividerDark),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusButton),
        borderSide: BorderSide(color: AppColors.dividerDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusButton),
        borderSide: BorderSide(color: AppColors.deepNavyLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusButton),
        borderSide: BorderSide(color: AppColors.errorDark),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppColors.spacingMedium,
        vertical: AppColors.spacingMedium,
      ),
      hintStyle: TextStyle(color: AppColors.textTertiaryDark),
    ),

    // Chip theme
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.surfaceDarkAlt,
      selectedColor: AppColors.deepNavyLight.withOpacity(0.2),
      labelStyle: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
      secondaryLabelStyle: TextStyle(color: AppColors.deepNavyLight),
      brightness: Brightness.dark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusChip),
      ),
      side: BorderSide(color: Colors.transparent),
      padding: EdgeInsets.symmetric(
        horizontal: AppColors.spacingSmall,
        vertical: AppColors.spacingXSmall,
      ),
    ),

    // Progress indicator
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.deepNavyLight,
      linearTrackColor: AppColors.deepNavyLight.withOpacity(0.2),
      circularTrackColor: AppColors.deepNavyLight.withOpacity(0.2),
    ),

    // Slider theme
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.deepNavyLight,
      inactiveTrackColor: AppColors.deepNavyLight.withOpacity(0.25),
      thumbColor: AppColors.deepNavyLight,
      overlayColor: AppColors.deepNavyLight.withOpacity(0.1),
      trackHeight: 4,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
    ),

    // Divider theme
    dividerTheme: DividerThemeData(
      color: AppColors.dividerDark,
      thickness: 1,
      space: AppColors.spacingMedium,
    ),

    // Dialog theme
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.surfaceDark,
      elevation: AppColors.elevationDialog,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusXLarge),
      ),
    ),

    // Bottom sheet theme
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.surfaceDark,
      elevation: AppColors.elevationDialog,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppColors.radiusXLarge),
        ),
      ),
    ),

    // Snackbar theme
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.surfaceDarkAlt,
      contentTextStyle: TextStyle(color: AppColors.textPrimaryDark),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusCard),
      ),
      behavior: SnackBarBehavior.floating,
    ),

    // Switch theme
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.deepNavyLight;
          }
          return AppColors.textTertiaryDark;
        },
      ),
      trackColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.deepNavyLight.withOpacity(0.4);
          }
          return AppColors.dividerDark;
        },
      ),
    ),

    // Checkbox theme
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.deepNavyLight;
          }
          return Colors.transparent;
        },
      ),
      checkColor: WidgetStateProperty.all(Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),

    // Radio theme
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.deepNavyLight;
          }
          return AppColors.textSecondaryDark;
        },
      ),
    ),

    // List tile theme
    listTileTheme: ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppColors.spacingMedium,
        vertical: AppColors.spacingSmall,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.radiusCard),
      ),
    ),

    // Icon theme
    iconTheme: IconThemeData(
      color: AppColors.textSecondaryDark,
      size: AppColors.iconMedium,
    ),

    // Primary icon theme
    primaryIconTheme: IconThemeData(
      color: AppColors.deepNavyLight,
      size: AppColors.iconMedium,
    ),
  );
}
