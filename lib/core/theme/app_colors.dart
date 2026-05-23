import 'package:flutter/material.dart';

class AppColors {
  // ═══════════════════════════════════════════════════════════════════════════
  // PRIMARY COLORS - Ocean Teal (Calm, Flow, Clarity)
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color oceanTeal = Color(0xFF4DB6AC);
  static const Color oceanTealLight = Color(0xFF80CBC4);
  static const Color oceanTealDark = Color(0xFF00897B);
  static const Color oceanTealSoft = Color(0xFF7ECDC3);

  // ═══════════════════════════════════════════════════════════════════════════
  // SECONDARY COLORS - Soft Lavender (Spirituality, Mindfulness)
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color softLavender = Color(0xFFB39DDB);
  static const Color softLavenderLight = Color(0xFFD1C4E9);
  static const Color softLavenderDark = Color(0xFF9575CD);

  // ═══════════════════════════════════════════════════════════════════════════
  // TERTIARY COLORS - Sage Green (Balance, Renewal, Nature)
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color sageGreen = Color(0xFFA5D6A7);
  static const Color sageGreenLight = Color(0xFFC8E6C9);
  static const Color sageGreenDark = Color(0xFF81C784);

  // ═══════════════════════════════════════════════════════════════════════════
  // BACKGROUND COLORS - Soft, Serene Tones
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color backgroundLight = Color(0xFFF5F9F9);      // Soft teal-tinted white
  static const Color backgroundLightAlt = Color(0xFFEDF5F4);   // Slightly deeper for contrast
  static const Color backgroundDark = Color(0xFF0F1A1A);       // Deep ocean night
  static const Color surfaceDark = Color(0xFF1A2828);          // Elevated dark surface
  static const Color surfaceDarkAlt = Color(0xFF243434);       // Cards in dark mode

  // ═══════════════════════════════════════════════════════════════════════════
  // TEXT COLORS - Muted, Easy on Eyes
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color textPrimary = Color(0xFF1A3333);          // Deep teal-gray
  static const Color textSecondary = Color(0xFF5A7373);        // Muted teal-gray
  static const Color textTertiary = Color(0xFF8A9E9E);         // Subtle hint text
  static const Color textPrimaryDark = Color(0xFFE8F4F4);      // Soft white with teal tint
  static const Color textSecondaryDark = Color(0xFFA8C4C4);    // Muted light teal
  static const Color textTertiaryDark = Color(0xFF6A8888);     // Subtle dark mode hint

  // ═══════════════════════════════════════════════════════════════════════════
  // STATUS COLORS - Soft, Non-Jarring
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color errorLight = Color(0xFFE57373);           // Soft coral
  static const Color errorDark = Color(0xFFEF9A9A);            // Lighter coral for dark
  static const Color success = Color(0xFF81C784);              // Soft green
  static const Color successDark = Color(0xFFA5D6A7);          // Lighter green for dark
  static const Color warning = Color(0xFFFFB74D);              // Soft amber
  static const Color warningDark = Color(0xFFFFCC80);          // Lighter amber for dark
  static const Color info = Color(0xFF64B5F6);                 // Soft blue
  static const Color infoDark = Color(0xFF90CAF9);             // Lighter blue for dark

  // ═══════════════════════════════════════════════════════════════════════════
  // PREMIUM COLORS - Serene Gold
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color premiumGold = Color(0xFFD4AF37);          // Warm gold
  static const Color premiumGoldLight = Color(0xFFE8D48A);     // Soft gold
  static const Color premiumGoldDark = Color(0xFFFFD54F);      // Bright gold for dark mode

  // ═══════════════════════════════════════════════════════════════════════════
  // ACCENT COLORS - For Special Elements
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color accentCoral = Color(0xFFFFAB91);          // Soft coral accent
  static const Color accentSky = Color(0xFF81D4FA);            // Sky blue accent
  static const Color accentPeach = Color(0xFFFFCCBC);          // Peach accent
  static const Color accentMint = Color(0xFFB2DFDB);           // Mint accent

  // ═══════════════════════════════════════════════════════════════════════════
  // GRADIENT COLORS - Flowing, Organic
  // ═══════════════════════════════════════════════════════════════════════════
  static const List<Color> primaryGradient = [
    Color(0xFF80CBC4),
    Color(0xFF4DB6AC),
    Color(0xFF26A69A),
  ];

  static const List<Color> breathingGradient = [
    Color(0xFFB2DFDB),                                         // Soft mint
    Color(0xFF80CBC4),                                         // Light teal
    Color(0xFF4DB6AC),                                         // Ocean teal
    Color(0xFF26A69A),                                         // Deep teal
  ];

  static const List<Color> meditationGradient = [
    Color(0xFFD1C4E9),                                         // Light lavender
    Color(0xFFB39DDB),                                         // Soft lavender
    Color(0xFF9575CD),                                         // Medium lavender
  ];

  static const List<Color> healingGradient = [
    Color(0xFFA5D6A7),                                         // Sage green
    Color(0xFF80CBC4),                                         // Light teal
    Color(0xFFB39DDB),                                         // Soft lavender
  ];

  static const List<Color> sunriseGradient = [
    Color(0xFFFFCCBC),                                         // Soft peach
    Color(0xFFFFAB91),                                         // Coral
    Color(0xFFFF8A65),                                         // Warm coral
  ];

  static const List<Color> oceanGradient = [
    Color(0xFFE0F7FA),                                         // Lightest cyan
    Color(0xFF80DEEA),                                         // Light cyan
    Color(0xFF4DD0E1),                                         // Cyan
    Color(0xFF26C6DA),                                         // Deep cyan
  ];

  // ═══════════════════════════════════════════════════════════════════════════
  // SPACING - Generous for Calm Feel
  // ═══════════════════════════════════════════════════════════════════════════
  static const double spacingXSmall = 4.0;
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 16.0;
  static const double spacingLarge = 24.0;
  static const double spacingXLarge = 32.0;
  static const double spacingXXLarge = 48.0;

  // ═══════════════════════════════════════════════════════════════════════════
  // BORDER RADIUS - Soft & Organic
  // ═══════════════════════════════════════════════════════════════════════════
  static const double radiusSmall = 8.0;
  static const double radiusButton = 12.0;
  static const double radiusCard = 16.0;
  static const double radiusChip = 24.0;
  static const double radiusLarge = 20.0;
  static const double radiusXLarge = 28.0;
  static const double radiusCircular = 999.0;

  // ═══════════════════════════════════════════════════════════════════════════
  // ELEVATION - Subtle, Soft Shadows
  // ═══════════════════════════════════════════════════════════════════════════
  static const double elevationCard = 1.0;
  static const double elevationCardDark = 2.0;
  static const double elevationButton = 0.5;
  static const double elevationFab = 4.0;
  static const double elevationAppBar = 0.0;
  static const double elevationAppBarScrolled = 1.0;
  static const double elevationBottomNav = 4.0;
  static const double elevationDialog = 8.0;

  // ═══════════════════════════════════════════════════════════════════════════
  // ANIMATION DURATIONS - Smooth, Calming
  // ═══════════════════════════════════════════════════════════════════════════
  static const Duration animationFast = Duration(milliseconds: 200);
  static const Duration animationMedium = Duration(milliseconds: 350);
  static const Duration animationSlow = Duration(milliseconds: 500);
  static const Duration animationGentle = Duration(milliseconds: 800);
  static const Duration animationBreathing = Duration(seconds: 4);

  // ═══════════════════════════════════════════════════════════════════════════
  // OPACITY - Soft Layering
  // ═══════════════════════════════════════════════════════════════════════════
  static const double opacityDisabled = 0.38;
  static const double opacityLight = 0.12;
  static const double opacityMedium = 0.54;
  static const double opacityHigh = 0.87;

  // ═══════════════════════════════════════════════════════════════════════════
  // ICON SIZES
  // ═══════════════════════════════════════════════════════════════════════════
  static const double iconSmall = 16.0;
  static const double iconMedium = 24.0;
  static const double iconLarge = 32.0;
  static const double iconXLarge = 48.0;
  static const double iconXXLarge = 64.0;

  // ═══════════════════════════════════════════════════════════════════════════
  // VIDEO PLAYER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color videoControlsBackground = Color(0xCC0F1A1A);
  static const Color videoProgressPlayed = oceanTeal;
  static const Color videoProgressBuffered = Color(0x4DFFFFFF);
  static const Color videoProgressBackground = Color(0x33FFFFFF);

  // ═══════════════════════════════════════════════════════════════════════════
  // AD BANNER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color adBannerBackground = Color(0xFFEDF5F4);
  static const Color adBannerBorder = Color(0xFFD0E0DE);

  // ═══════════════════════════════════════════════════════════════════════════
  // SHIMMER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color shimmerBase = Color(0xFFE0EEEC);
  static const Color shimmerHighlight = Color(0xFFF0F8F7);
  static const Color shimmerBaseDark = Color(0xFF2A3A3A);
  static const Color shimmerHighlightDark = Color(0xFF3A4A4A);

  // ═══════════════════════════════════════════════════════════════════════════
  // DIVIDER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color dividerLight = Color(0xFFD8E8E6);
  static const Color dividerDark = Color(0xFF2A3A3A);

  // ═══════════════════════════════════════════════════════════════════════════
  // HELPER METHODS
  // ═══════════════════════════════════════════════════════════════════════════
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }

  static LinearGradient createGradient(
    List<Color> colors, {
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: colors,
    );
  }

  static RadialGradient createRadialGradient(
    List<Color> colors, {
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
  }) {
    return RadialGradient(
      center: center,
      radius: radius,
      colors: colors,
    );
  }

  static LinearGradient createSoftGradient(
    Color color, {
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: [
        color.withOpacity(0.1),
        color.withOpacity(0.05),
      ],
    );
  }
}
