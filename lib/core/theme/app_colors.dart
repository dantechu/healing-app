import 'package:flutter/material.dart';

class AppColors {
  // ═══════════════════════════════════════════════════════════════════════════
  // PRIMARY COLORS - Warm Brown (Grounding, Stability, Natural Healing)
  // Inspired by the yin-yang dark portion of the app icon
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color warmBrown = Color(0xFF4A3728);            // Rich chocolate brown
  static const Color warmBrownLight = Color(0xFF6B5344);       // Lighter warm brown
  static const Color warmBrownDark = Color(0xFF2E2118);        // Deep brown
  static const Color warmBrownSoft = Color(0xFF7A6455);        // Soft brown

  // Legacy aliases for compatibility
  static const Color deepNavy = warmBrown;
  static const Color deepNavyLight = warmBrownLight;
  static const Color deepNavyDark = warmBrownDark;
  static const Color deepNavySoft = warmBrownSoft;

  // ═══════════════════════════════════════════════════════════════════════════
  // SECONDARY COLORS - Golden Tan (Warmth, Energy, Chi Flow)
  // Inspired by the golden border of the app icon
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color goldenTan = Color(0xFFC4A55A);            // Warm golden tan
  static const Color goldenTanLight = Color(0xFFDBC78A);       // Light golden
  static const Color goldenTanDark = Color(0xFFA68B3D);        // Deep golden

  // Legacy aliases for compatibility
  static const Color softTeal = goldenTan;
  static const Color softTealLight = goldenTanLight;
  static const Color softTealDark = goldenTanDark;

  // ═══════════════════════════════════════════════════════════════════════════
  // TERTIARY COLORS - Soft Cream (Serenity, Balance, Purity)
  // Inspired by the cream background of the app icon
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color softCream = Color(0xFFE8D4B0);            // Warm cream
  static const Color softCreamLight = Color(0xFFF5EDE0);       // Very light cream
  static const Color softCreamDark = Color(0xFFD4BF96);        // Darker cream

  // Legacy aliases for compatibility
  static const Color warmGold = goldenTan;
  static const Color warmGoldLight = goldenTanLight;
  static const Color warmGoldDark = goldenTanDark;

  // ═══════════════════════════════════════════════════════════════════════════
  // BACKGROUND COLORS - Warm, Inviting Tones
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color backgroundLight = Color(0xFFFAF6F0);      // Warm off-white
  static const Color backgroundLightAlt = Color(0xFFF0E8DC);   // Slightly deeper warm cream
  static const Color backgroundDark = Color(0xFF1E1814);       // Deep warm black-brown
  static const Color surfaceDark = Color(0xFF2A2420);          // Elevated dark surface
  static const Color surfaceDarkAlt = Color(0xFF3A3430);       // Cards in dark mode

  // ═══════════════════════════════════════════════════════════════════════════
  // TEXT COLORS - Warm, Readable
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color textPrimary = Color(0xFF2E2118);          // Warm dark brown
  static const Color textSecondary = Color(0xFF6B5C50);        // Muted brown
  static const Color textTertiary = Color(0xFF9A8B7F);         // Subtle warm hint
  static const Color textPrimaryDark = Color(0xFFF0E8DC);      // Warm off-white
  static const Color textSecondaryDark = Color(0xFFC4B8A8);    // Muted cream
  static const Color textTertiaryDark = Color(0xFF8A7E70);     // Subtle dark mode hint

  // ═══════════════════════════════════════════════════════════════════════════
  // STATUS COLORS - Earthy, Harmonious
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color errorLight = Color(0xFFBF6B5A);           // Soft terracotta red
  static const Color errorDark = Color(0xFFD89080);            // Lighter terracotta for dark
  static const Color success = Color(0xFF7A9E6B);              // Sage green
  static const Color successDark = Color(0xFF9ABF8B);          // Lighter sage for dark
  static const Color warning = Color(0xFFD4A556);              // Warm amber warning
  static const Color warningDark = Color(0xFFE8C080);          // Lighter amber for dark
  static const Color info = Color(0xFF8B7355);                 // Warm taupe info
  static const Color infoDark = Color(0xFFB8A080);             // Lighter taupe for dark

  // ═══════════════════════════════════════════════════════════════════════════
  // PREMIUM COLORS - Elegant Gold
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color premiumGold = Color(0xFFC4A55A);          // Warm golden tan
  static const Color premiumGoldLight = Color(0xFFDBC78A);     // Soft gold
  static const Color premiumGoldDark = Color(0xFFE8D080);      // Bright gold for dark mode

  // ═══════════════════════════════════════════════════════════════════════════
  // ACCENT COLORS - Earth Tones for Special Elements
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color accentTerracotta = Color(0xFFBF8B6B);     // Warm terracotta
  static const Color accentSage = Color(0xFF8BA37A);           // Sage green (natural healing)
  static const Color accentGold = Color(0xFFC4A55A);           // Golden accent
  static const Color accentMocha = Color(0xFF9B8575);          // Soft mocha

  // Legacy aliases
  static const Color accentSky = accentMocha;
  static const Color accentTeal = accentSage;
  static const Color accentLavender = accentTerracotta;

  // ═══════════════════════════════════════════════════════════════════════════
  // GRADIENT COLORS - Warm, Organic Flow
  // ═══════════════════════════════════════════════════════════════════════════
  static const List<Color> primaryGradient = [
    Color(0xFF6B5344),                                         // Warm brown light
    Color(0xFF4A3728),                                         // Warm brown
    Color(0xFF2E2118),                                         // Warm brown dark
  ];

  static const List<Color> breathingGradient = [
    Color(0xFFDBC78A),                                         // Golden tan light
    Color(0xFFC4A55A),                                         // Golden tan
    Color(0xFFA68B3D),                                         // Golden tan dark
    Color(0xFF4A3728),                                         // Warm brown
  ];

  static const List<Color> meditationGradient = [
    Color(0xFF7A6455),                                         // Brown soft
    Color(0xFF4A3728),                                         // Warm brown
    Color(0xFF2E2118),                                         // Brown dark
  ];

  static const List<Color> healingGradient = [
    Color(0xFFE8D4B0),                                         // Soft cream
    Color(0xFFC4A55A),                                         // Golden tan
    Color(0xFF4A3728),                                         // Warm brown
  ];

  static const List<Color> sunriseGradient = [
    Color(0xFFF5EDE0),                                         // Cream light
    Color(0xFFDBC78A),                                         // Golden tan light
    Color(0xFFC4A55A),                                         // Golden tan
  ];

  static const List<Color> oceanGradient = [
    Color(0xFFE8D4B0),                                         // Soft cream
    Color(0xFFD4BF96),                                         // Cream dark
    Color(0xFFC4A55A),                                         // Golden tan
    Color(0xFF4A3728),                                         // Warm brown
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
  static const Color videoControlsBackground = Color(0xCC1E1814);
  static const Color videoProgressPlayed = warmBrown;
  static const Color videoProgressBuffered = Color(0x4DFFFFFF);
  static const Color videoProgressBackground = Color(0x33FFFFFF);

  // ═══════════════════════════════════════════════════════════════════════════
  // AD BANNER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color adBannerBackground = Color(0xFFF0E8DC);
  static const Color adBannerBorder = Color(0xFFE0D4C4);

  // ═══════════════════════════════════════════════════════════════════════════
  // SHIMMER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color shimmerBase = Color(0xFFE8DED0);
  static const Color shimmerHighlight = Color(0xFFF5EDE0);
  static const Color shimmerBaseDark = Color(0xFF3A3430);
  static const Color shimmerHighlightDark = Color(0xFF4A4440);

  // ═══════════════════════════════════════════════════════════════════════════
  // DIVIDER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color dividerLight = Color(0xFFE0D4C4);
  static const Color dividerDark = Color(0xFF3A3430);

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
