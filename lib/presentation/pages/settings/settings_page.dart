import 'package:healing_app/core/services/premium_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/theme/app_colors.dart';
import '../../../l10n/app_localizations.dart';
import '../../bloc/theme/theme_bloc.dart';
import '../../bloc/theme/theme_event.dart';
import '../../bloc/theme/theme_state.dart';
import '../../bloc/locale/locale_bloc.dart';
import '../../bloc/locale/locale_event.dart';
import '../../bloc/locale/locale_state.dart';
import '../../bloc/premium/premium_bloc.dart';
import '../../bloc/premium/premium_state.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.settings ?? 'Settings'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildPremiumTile(context),
          const SizedBox(height: 8),
          _buildAppearanceSection(context),
          const SizedBox(height: 8),
          _buildLanguageSection(context),
          const SizedBox(height: 8),
          _buildAboutSection(context),
          const SizedBox(height: 8),
          _buildSupportSection(context),
        ],
      ),
    );
  }

  Widget _buildAppearanceSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.palette,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  AppLocalizations.of(context)?.appearance ?? 'Appearance',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                String currentThemeName;
                switch (state.themeMode) {
                  case AppThemeMode.light:
                    currentThemeName = AppLocalizations.of(context)?.light ?? 'Light';
                    break;
                  case AppThemeMode.dark:
                    currentThemeName = AppLocalizations.of(context)?.dark ?? 'Dark';
                    break;
                  case AppThemeMode.system:
                    currentThemeName = AppLocalizations.of(context)?.system ?? 'System';
                    break;
                }
                return _buildCompactListItem(
                  context,
                  icon: Icons.brightness_6,
                  title: AppLocalizations.of(context)?.theme ?? 'Theme',
                  subtitle: currentThemeName,
                  onTap: () => _showThemeDialog(context, state.themeMode),
                  showTrailing: true,
                  isLast: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showThemeDialog(BuildContext context, AppThemeMode currentMode) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(AppLocalizations.of(context)?.theme ?? 'Theme'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildThemeOption(
              context,
              dialogContext,
              AppThemeMode.light,
              currentMode,
              Icons.light_mode,
              AppLocalizations.of(context)?.light ?? 'Light',
            ),
            _buildThemeOption(
              context,
              dialogContext,
              AppThemeMode.dark,
              currentMode,
              Icons.dark_mode,
              AppLocalizations.of(context)?.dark ?? 'Dark',
            ),
            _buildThemeOption(
              context,
              dialogContext,
              AppThemeMode.system,
              currentMode,
              Icons.settings_suggest,
              AppLocalizations.of(context)?.system ?? 'System',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeOption(
    BuildContext context,
    BuildContext dialogContext,
    AppThemeMode mode,
    AppThemeMode currentMode,
    IconData icon,
    String label,
  ) {
    final theme = Theme.of(context);
    final isSelected = mode == currentMode;

    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? theme.colorScheme.primary : theme.colorScheme.onSurface,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          color: isSelected ? theme.colorScheme.primary : theme.colorScheme.onSurface,
        ),
      ),
      trailing: isSelected
          ? Icon(Icons.check, color: theme.colorScheme.primary)
          : null,
      onTap: () {
        context.read<ThemeBloc>().add(ChangeTheme(mode));
        Navigator.of(dialogContext).pop();
      },
    );
  }

  Widget _buildLanguageSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.language,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  AppLocalizations.of(context)?.language ?? 'Language',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            BlocBuilder<LocaleBloc, LocaleState>(
              builder: (context, state) {
                // Find current language name
                String currentLanguageName = 'English';
                for (final language in AppConstants.supportedLocales) {
                  if (language['code'] == state.locale.languageCode) {
                    currentLanguageName = language['name'] as String;
                    break;
                  }
                }
                return _buildCompactListItem(
                  context,
                  icon: Icons.translate,
                  title: AppLocalizations.of(context)?.language ?? 'Language',
                  subtitle: currentLanguageName,
                  onTap: () => _showLanguageDialog(context, state.locale),
                  showTrailing: true,
                  isLast: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context, Locale currentLocale) {
    final theme = Theme.of(context);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(AppLocalizations.of(context)?.language ?? 'Language'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: AppConstants.supportedLocales.map((language) {
            final locale = Locale(language['code'] as String);
            final isSelected = currentLocale.languageCode == locale.languageCode;

            return ListTile(
              leading: Text(
                language['flag'] as String,
                style: const TextStyle(fontSize: 24),
              ),
              title: Text(
                language['name'] as String,
                style: TextStyle(
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  color: isSelected ? theme.colorScheme.primary : theme.colorScheme.onSurface,
                ),
              ),
              trailing: isSelected
                  ? Icon(Icons.check, color: theme.colorScheme.primary)
                  : null,
              onTap: () {
                context.read<LocaleBloc>().add(ChangeLocale(locale));
                Navigator.of(dialogContext).pop();
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  AppLocalizations.of(context)?.about ?? 'About',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildCompactListItem(
              context,
              icon: Icons.person,
              title: AppLocalizations.of(context)?.instructor ?? 'Instructor',
              subtitle: AppLocalizations.of(context)?.johnSaxxon ?? 'John Saxxon',
              onTap: () => _showInstructorDialog(context),
            ),
            _buildCompactListItem(
              context,
              icon: Icons.info_outline,
              title: AppLocalizations.of(context)?.version ?? 'App Version',
              subtitle: '${AppConstants.appVersion} (${AppConstants.bundleId})',
            ),
            _buildCompactListItem(
              context,
              icon: Icons.star_rate,
              title: AppLocalizations.of(context)?.rateApp ?? 'Rate App',
              onTap: () => _showRatingDialog(context),
              showTrailing: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSupportSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.support,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  AppLocalizations.of(context)?.support ?? 'Support',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildCompactListItem(
              context,
              icon: Icons.email,
              title: AppLocalizations.of(context)?.contactUs ?? 'Contact Support',
              subtitle: AppConstants.supportEmail,
              onTap: () => _launchEmail(AppConstants.supportEmail),
              showTrailing: true,
            ),
            _buildCompactListItem(
              context,
              icon: Icons.web,
              title: AppLocalizations.of(context)?.website ?? 'Website',
              subtitle: AppConstants.website,
              onTap: () => _launchUrl('https://${AppConstants.website}'),
              showTrailing: true,
            ),
            _buildCompactListItem(
              context,
              icon: Icons.privacy_tip,
              title: AppLocalizations.of(context)?.privacyPolicy ?? 'Privacy Policy',
              onTap: () => _launchUrl(AppConstants.privacyPolicyUrl),
              showTrailing: true,
            ),
            _buildCompactListItem(
              context,
              icon: Icons.description,
              title: AppLocalizations.of(context)?.termsOfService ?? 'Terms of Service',
              onTap: () => _launchUrl(AppConstants.termsOfServiceUrl),
              showTrailing: true,
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompactListItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    String? subtitle,
    VoidCallback? onTap,
    bool showTrailing = false,
    bool isLast = false,
  }) {
    final theme = Theme.of(context);
    
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
          margin: EdgeInsets.only(bottom: isLast ? 0 : 8),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (showTrailing && onTap != null)
                Icon(
                  Icons.chevron_right,
                  size: 20,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _showInstructorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)?.aboutJohnSaxxon ?? 'About John Saxxon'),
        content: Text(
          AppLocalizations.of(context)?.johnSaxxonBio ?? 
          'John Saxxon is a certified Tai Chi instructor with over 20 years of experience. '
          'He has trained thousands of students worldwide in the art of Tai Chi and meditation.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(AppLocalizations.of(context)?.close ?? 'Close'),
          ),
        ],
      ),
    );
  }

  void _showRatingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)?.rateOurApp ?? 'Rate Our App'),
        content: Text(
          AppLocalizations.of(context)?.rateAppMessage ?? 
          'If you enjoy using our Tai Chi app, please take a moment to rate it. '
          'Your feedback helps us improve the app for everyone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(AppLocalizations.of(context)?.later ?? 'Later'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              // In a real app, this would open the app store
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)?.thankYouRating ?? 'Thank you! Opening app store...'),
                ),
              );
            },
            child: Text(AppLocalizations.of(context)?.rateNow ?? 'Rate Now'),
          ),
        ],
      ),
    );
  }

  void _launchEmail(String email) async {
    final uri = Uri.parse('mailto:$email?subject=Tai Chi App Support');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Widget _buildPremiumTile(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return BlocBuilder<PremiumBloc, PremiumState>(
      builder: (context, premiumState) {
        // Check premium status from singleton service - SINGLE SOURCE OF TRUTH
        final isPremium = PremiumService().isPremium;

        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isPremium
                  ? [
                      AppColors.accentSage.withValues(alpha: isDark ? 0.3 : 0.15),
                      AppColors.accentSage.withValues(alpha: isDark ? 0.15 : 0.05),
                    ]
                  : [
                      AppColors.goldenTan.withValues(alpha: isDark ? 0.3 : 0.2),
                      AppColors.goldenTanLight.withValues(alpha: isDark ? 0.15 : 0.1),
                    ],
            ),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isPremium
                  ? AppColors.accentSage.withValues(alpha: 0.3)
                  : AppColors.goldenTan.withValues(alpha: 0.4),
              width: 1,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                // Check premium status and navigate to correct page
                final isPremiumUser = PremiumService().isPremium;
                if (isPremiumUser) {
                  // User is premium - show thank you page
                  Navigator.of(context).pushNamed('/premium-unlocked');
                } else {
                  // User is NOT premium - show purchase page
                  Navigator.of(context).pushNamed('/premium');
                }
              },
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isPremium
                            ? AppColors.accentSage
                            : AppColors.goldenTan,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        isPremium ? Icons.workspace_premium : Icons.diamond,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isPremium
                                ? (AppLocalizations.of(context)?.premiumStatusTitle ?? 'Premium Member')
                                : (AppLocalizations.of(context)?.premiumTitle ?? 'Unlock Premium'),
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: isPremium
                                  ? (isDark ? AppColors.accentSage : AppColors.warmBrownDark)
                                  : (isDark ? AppColors.goldenTanLight : AppColors.warmBrownDark),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            isPremium
                                ? (AppLocalizations.of(context)?.premiumStatusSubtitle ?? 'You have unlimited access to all features')
                                : (AppLocalizations.of(context)?.premiumSubtitle ?? 'Get unlimited access to all features'),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isPremium
                                  ? (isDark ? AppColors.accentSage.withValues(alpha: 0.8) : AppColors.warmBrown)
                                  : (isDark ? AppColors.goldenTan.withValues(alpha: 0.9) : AppColors.warmBrown.withValues(alpha: 0.8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      isPremium ? Icons.check_circle : Icons.arrow_forward_ios,
                      size: 20,
                      color: isPremium ? AppColors.accentSage : AppColors.goldenTan,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

}