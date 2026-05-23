import 'package:flutter/material.dart';

class AppColors {
  // ═══════════════════════════════════════════════════════════════════════════
  // PRIMARY COLORS - Deep Navy/Midnight Blue (Calm, Depth, Trust)
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color deepNavy = Color(0xFF1E3A5F);
  static const Color deepNavyLight = Color(0xFF2D5A8A);
  static const Color deepNavyDark = Color(0xFF142840);
  static const Color deepNavySoft = Color(0xFF3D6B9E);

  // ═══════════════════════════════════════════════════════════════════════════
  // SECONDARY COLORS - Soft Teal (Healing, Balance, Serenity)
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color softTeal = Color(0xFF5BA3A3);
  static const Color softTealLight = Color(0xFF7BC4C4);
  static const Color softTealDark = Color(0xFF3D7A7A);

  // ═══════════════════════════════════════════════════════════════════════════
  // TERTIARY COLORS - Warm Gold (Energy, Chi, Vitality)
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color warmGold = Color(0xFFC9A962);
  static const Color warmGoldLight = Color(0xFFE0CCA0);
  static const Color warmGoldDark = Color(0xFFA68B45);

  // ═══════════════════════════════════════════════════════════════════════════
  // BACKGROUND COLORS - Cool, Serene Tones
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color backgroundLight = Color(0xFFF5F7FA);      // Cool white with blue tint
  static const Color backgroundLightAlt = Color(0xFFEBEFF5);   // Slightly deeper for contrast
  static const Color backgroundDark = Color(0xFF0D1520);       // Deep midnight
  static const Color surfaceDark = Color(0xFF162030);          // Elevated dark surface
  static const Color surfaceDarkAlt = Color(0xFF1E2A3D);       // Cards in dark mode

  // ═══════════════════════════════════════════════════════════════════════════
  // TEXT COLORS - Clear, Readable
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color textPrimary = Color(0xFF1A2535);          // Deep blue-gray
  static const Color textSecondary = Color(0xFF4A5568);        // Muted blue-gray
  static const Color textTertiary = Color(0xFF8A94A6);         // Subtle hint text
  static const Color textPrimaryDark = Color(0xFFE8ECF2);      // Soft blue-white
  static const Color textSecondaryDark = Color(0xFFA8B5C8);    // Muted light blue
  static const Color textTertiaryDark = Color(0xFF6B7A8F);     // Subtle dark mode hint

  // ═══════════════════════════════════════════════════════════════════════════
  // STATUS COLORS - Soft, Non-Jarring
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color errorLight = Color(0xFFDC6B6B);           // Soft muted red
  static const Color errorDark = Color(0xFFE89090);            // Lighter red for dark
  static const Color success = Color(0xFF5BA37B);              // Soft forest green
  static const Color successDark = Color(0xFF7BC49B);          // Lighter green for dark
  static const Color warning = Color(0xFFD4A556);              // Warm amber warning
  static const Color warningDark = Color(0xFFE8C080);          // Lighter amber for dark
  static const Color info = Color(0xFF5B8DC9);                 // Soft blue
  static const Color infoDark = Color(0xFF8BB5E0);             // Lighter blue for dark

  // ═══════════════════════════════════════════════════════════════════════════
  // PREMIUM COLORS - Serene Gold
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color premiumGold = Color(0xFFD4AF37);          // Warm gold
  static const Color premiumGoldLight = Color(0xFFE8D48A);     // Soft gold
  static const Color premiumGoldDark = Color(0xFFFFD54F);      // Bright gold for dark mode

  // ═══════════════════════════════════════════════════════════════════════════
  // ACCENT COLORS - For Special Elements
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color accentSky = Color(0xFF7BA8D4);            // Sky blue accent
  static const Color accentTeal = Color(0xFF5BA3A3);           // Teal accent
  static const Color accentGold = Color(0xFFC9A962);           // Gold accent
  static const Color accentLavender = Color(0xFF9B8DC2);       // Soft lavender accent

  // ═══════════════════════════════════════════════════════════════════════════
  // GRADIENT COLORS - Flowing, Organic
  // ═══════════════════════════════════════════════════════════════════════════
  static const List<Color> primaryGradient = [
    Color(0xFF2D5A8A),
    Color(0xFF1E3A5F),
    Color(0xFF142840),
  ];

  static const List<Color> breathingGradient = [
    Color(0xFF7BC4C4),                                         // Soft teal light
    Color(0xFF5BA3A3),                                         // Soft teal
    Color(0xFF3D7A7A),                                         // Soft teal dark
    Color(0xFF1E3A5F),                                         // Deep navy
  ];

  static const List<Color> meditationGradient = [
    Color(0xFF3D6B9E),                                         // Navy soft
    Color(0xFF1E3A5F),                                         // Deep navy
    Color(0xFF142840),                                         // Navy dark
  ];

  static const List<Color> healingGradient = [
    Color(0xFF5BA3A3),                                         // Soft teal
    Color(0xFF1E3A5F),                                         // Deep navy
    Color(0xFFC9A962),                                         // Warm gold
  ];

  static const List<Color> sunriseGradient = [
    Color(0xFFE0CCA0),                                         // Gold light
    Color(0xFFC9A962),                                         // Warm gold
    Color(0xFFA68B45),                                         // Gold dark
  ];

  static const List<Color> oceanGradient = [
    Color(0xFF7BC4C4),                                         // Light teal
    Color(0xFF5BA3A3),                                         // Soft teal
    Color(0xFF2D5A8A),                                         // Navy light
    Color(0xFF1E3A5F),                                         // Deep navy
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
  static const Color videoControlsBackground = Color(0xCC0D1520);
  static const Color videoProgressPlayed = deepNavy;
  static const Color videoProgressBuffered = Color(0x4DFFFFFF);
  static const Color videoProgressBackground = Color(0x33FFFFFF);

  // ═══════════════════════════════════════════════════════════════════════════
  // AD BANNER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color adBannerBackground = Color(0xFFEBEFF5);
  static const Color adBannerBorder = Color(0xFFD0D8E5);

  // ═══════════════════════════════════════════════════════════════════════════
  // SHIMMER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color shimmerBase = Color(0xFFDCE3ED);
  static const Color shimmerHighlight = Color(0xFFF0F3F8);
  static const Color shimmerBaseDark = Color(0xFF253040);
  static const Color shimmerHighlightDark = Color(0xFF354050);

  // ═══════════════════════════════════════════════════════════════════════════
  // DIVIDER COLORS
  // ═══════════════════════════════════════════════════════════════════════════
  static const Color dividerLight = Color(0xFFD8E0EB);
  static const Color dividerDark = Color(0xFF2A3545);

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
