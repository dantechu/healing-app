import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../l10n/app_localizations.dart';
import 'music_player_page.dart';
import '../breathing/breathing_timer_page.dart';

class PracticePage extends StatefulWidget {
  const PracticePage({super.key});

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  // Define gradients for each tab - using warm earth-tone healing colors
  final _musicGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.goldenTan.withValues(alpha: 0.12),
      AppColors.goldenTan.withValues(alpha: 0.0),
    ],
    stops: const [0.0, 0.5],
  );

  final _breathingGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.warmBrown.withValues(alpha: 0.1),
      Colors.transparent,
    ],
    stops: const [0.0, 0.5],
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging || _tabController.index != _currentTabIndex) {
        setState(() {
          _currentTabIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Gradient _getCurrentGradient() {
    switch (_currentTabIndex) {
      case 0:
        return _musicGradient;
      case 1:
        return _breathingGradient;
      default:
        return _musicGradient;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: Container(
        decoration: BoxDecoration(
          gradient: _getCurrentGradient(),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Modern glassmorphic tab bar
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: isDark
                            ? Colors.white.withValues(alpha: 0.06)
                            : Colors.white.withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: isDark
                              ? Colors.white.withValues(alpha: 0.08)
                              : theme.colorScheme.outline.withValues(alpha: 0.08),
                          width: 1,
                        ),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicator: BoxDecoration(
                          color: theme.colorScheme.primary.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        labelColor: theme.colorScheme.primary,
                        unselectedLabelColor: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        tabs: [
                          Tab(
                            height: 52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  _currentTabIndex == 0
                                      ? Icons.music_note_rounded
                                      : Icons.music_note_outlined,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(AppLocalizations.of(context)?.music ?? 'Music'),
                              ],
                            ),
                          ),
                          Tab(
                            height: 52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  _currentTabIndex == 1
                                      ? Icons.air_rounded
                                      : Icons.air_outlined,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(AppLocalizations.of(context)?.breathing ?? 'Breathing'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    MusicPlayerPage(),
                    BreathingTimerPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
