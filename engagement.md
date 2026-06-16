# Engagement Strategy for Healing App

This document outlines engagement patterns, gamification elements, and monetization strategies to increase user retention, session length, and revenue.

---

## 1. Progress Tracking System

### 1.1 Video Completion Tracking
- Mark videos as "completed" when user watches 90%+ of the video
- Store completion status locally in Hive (offline-first)
- Track completion timestamp for stats

### 1.2 Course Progress Visualization
- **Home Page Progress Circle**: Show circular progress indicator for the currently selected course (e.g., "12/22 videos completed")
- **Course Card Progress Bar**: Display horizontal progress bar on each course card in the Courses page
- **Section Progress Indicators**: Show checkmark or progress fraction on each section header (e.g., "3/5 completed")

### 1.3 Auto-Resume Feature
- On app open, automatically scroll to the next unwatched video in the current course
- Show "Continue Learning" card at the top of home page with the next video to watch
- Remember video playback position (resume from where user left off)

---

## 2. Post-Video Engagement Loop

### 2.1 Completion Dialog Flow
When a video is completed (90%+ watched):

```
┌─────────────────────────────────────┐
│                                     │
│     ✓ Video Complete!               │
│                                     │
│   ┌─────────────────────────┐       │
│   │ Section Progress: 3/5   │       │
│   │ ████████░░░░░░  60%     │       │
│   └─────────────────────────┘       │
│                                     │
│   Up Next: "Structure Part 3"       │
│   Duration: 8 min                   │
│                                     │
│   ┌──────────┐  ┌──────────┐        │
│   │  Close   │  │  Next →  │        │
│   └──────────┘  └──────────┘        │
│                                     │
└─────────────────────────────────────┘
```

### 2.2 Interstitial Ad Integration
- Show interstitial ad when user taps "Next" button
- After ad completes/closes, automatically navigate to and play next video
- **Frequency**: Show interstitial every 2-3 video completions (not every single one)
- Skip interstitial for premium users

### 2.3 Section Completion Celebration
When a section is fully completed:

```
┌─────────────────────────────────────┐
│                                     │
│          🎉 Section Complete!       │
│                                     │
│      "Structure" Mastered           │
│                                     │
│      ┌─────────────────────┐        │
│      │  Course Progress    │        │
│      │  ██████░░░░  55%    │        │
│      │  12/22 videos       │        │
│      └─────────────────────┘        │
│                                     │
│   Next Section: "Flexibility"       │
│   3 videos • 24 min                 │
│                                     │
│   ┌────────────────────────┐        │
│   │   Start Next Section   │        │
│   └────────────────────────┘        │
│                                     │
└─────────────────────────────────────┘
```

### 2.4 Course Completion Celebration
When entire course is completed:

```
┌─────────────────────────────────────┐
│                                     │
│     🏆 Congratulations! 🏆          │
│                                     │
│    You've completed the course      │
│    "Tai Chi Fundamentals"           │
│                                     │
│    ┌───────────────────────┐        │
│    │  📺 22 Videos         │        │
│    │  ⏱️  2h 45m Total     │        │
│    │  📅 Completed Today   │        │
│    └───────────────────────┘        │
│                                     │
│   ┌────────────────────────┐        │
│   │   Explore More Courses │        │
│   └────────────────────────┘        │
│                                     │
└─────────────────────────────────────┘
```

---

## 3. Stats Dashboard

Create a new "Stats" or "My Journey" page accessible from settings or as a separate page.

### 3.1 Core Statistics
| Stat | Description |
|------|-------------|
| Total Watch Time | Cumulative time spent watching videos |
| Videos Completed | Total count across all courses |
| Courses Completed | Number of fully completed courses |
| Sections Completed | Total sections finished |
| Current Progress | Active course completion percentage |

### 3.2 Dashboard Layout
```
┌─────────────────────────────────────┐
│         My Journey                  │
├─────────────────────────────────────┤
│                                     │
│  ┌─────────┐  ┌─────────┐          │
│  │  4h 32m │  │   18    │          │
│  │ watched │  │ videos  │          │
│  └─────────┘  └─────────┘          │
│                                     │
│  ┌─────────┐  ┌─────────┐          │
│  │    2    │  │    5    │          │
│  │ courses │  │sections │          │
│  └─────────┘  └─────────┘          │
│                                     │
├─────────────────────────────────────┤
│  Course Progress                    │
│  ┌─────────────────────────────┐   │
│  │ Tai Chi Fundamentals        │   │
│  │ ████████████░░░░  75%       │   │
│  └─────────────────────────────┘   │
│                                     │
└─────────────────────────────────────┘
```

---

## 4. Strategic Ad Placements

### 4.1 Interstitial Ads
| Trigger | Frequency | Notes |
|---------|-----------|-------|
| After video completion | Every 2-3 videos | Before loading next video |
| Section completion | Always | Part of celebration flow |
| Return to home from player | Occasional | Not every time |
| Course completion | Always | After celebration dialog |

### 4.2 Rewarded Video Ads
- **Unlock Premium Video**: When user taps on a locked/premium video, show option to watch a rewarded ad to unlock it
- After watching the rewarded ad, the video becomes playable for the rest of that day (resets at midnight)
- Premium videos show a "Watch Ad to Unlock" button alongside "Upgrade to Premium"
- Track unlocked videos to prevent abuse (e.g., limit to 2-3 rewarded unlocks per day)

### 4.3 Banner Ad Optimization
- Keep existing banner on breathing timer
- Add banner to stats dashboard page
- Add small banner at bottom of video completion dialog (non-intrusive)

---

## 5. Push Notifications

### 5.1 Re-engagement Notifications
| Trigger | Timing | Message Example |
|---------|--------|-----------------|
| User hasn't opened app | 24 hours | "Continue your healing journey - you're 60% through Structure!" |
| User hasn't opened app | 3 days | "Your body needs movement. Take 5 minutes for yourself today." |
| User hasn't opened app | 7 days | "We miss you! Pick up where you left off in Tai Chi Fundamentals" |
| Incomplete section | 48 hours | "Just 2 more videos to complete the Flexibility section!" |

### 5.2 Progress Celebration Notifications
| Trigger | Message Example |
|---------|-----------------|
| Course 50% complete | "Halfway there! You've mastered 50% of Tai Chi Fundamentals" |
| Section unlocked | "New section unlocked: Power. Ready to continue?" |
| Weekly milestone | "Great week! You practiced 3 times. Keep the momentum!" |

### 5.3 Implementation Notes
- Use local notifications (no server needed for offline-first)
- Schedule notifications when app goes to background
- Cancel/reschedule when user returns
- Respect system notification settings
- Provide opt-out in settings

---

## 6. UI/UX Enhancements for Engagement

### 6.1 Home Page Improvements
- **Continue Watching Card**: Prominent card showing last/next video
- **Progress Ring**: Circular progress for current course
- **Recently Completed**: Show last 3 completed videos
- **Quick Stats Bar**: "18 videos • 4h watched" at top

### 6.2 Video List Improvements
- **Completion Checkmarks**: Show ✓ on completed videos
- **Progress Indicator**: Show current position in video if partially watched
- **"New" Badge**: Mark videos added in last 7 days
- **Section Dividers**: Clear visual separation with completion status

### 6.3 Video Player Improvements
- **Progress Bar with Sections**: Show chapter markers if applicable
- **Auto-Advance Toggle**: Setting to auto-play next video
- **Mini Progress Popup**: Brief "3/22 complete" toast after video ends

### 6.4 Course Page Improvements
- **Completion Ribbon**: Visual badge on completed courses
- **Progress Preview**: "12/22 videos completed" on each card
- **Time Estimate**: "~45 min remaining" for incomplete courses

---

## 7. Implementation Priority

### Phase 1: Foundation (Must Have)
1. Video completion tracking (Hive storage)
2. Course/section progress calculation
3. Progress circles on home and course pages
4. Auto-scroll to next video on app open
5. Basic completion dialog with "Next" button

### Phase 2: Monetization (High Priority)
1. Interstitial ads after video completion
2. Ad frequency tracking (every 2-3 videos)
3. Premium user ad skip
4. Section/course completion interstitials

### Phase 3: Stats & Engagement
1. Stats dashboard page
2. Watch time tracking

### Phase 4: Notifications
1. Local notification setup
2. Re-engagement notifications (24h, 3d, 7d)
3. Progress celebration notifications

### Phase 5: Polish
1. Rewarded ads to unlock premium videos

---

## 8. Data Model Changes

### 8.1 New Entities Needed

```dart
// Video progress tracking
class VideoProgress {
  String videoId;
  bool isCompleted;
  double watchedPercentage;
  int lastPosition; // seconds
  DateTime? completedAt;
  DateTime lastWatchedAt;
}

// User stats
class UserStats {
  int totalWatchTimeSeconds;
  int totalVideosCompleted;
  int totalSectionsCompleted;
  int totalCoursesCompleted;
  DateTime? lastSessionAt;
}

// Notification scheduling
class ScheduledNotification {
  String id;
  String type; // re_engagement, progress, reminder
  DateTime scheduledAt;
  String title;
  String body;
  bool isSent;
}
```

### 8.2 New Hive Boxes
- `video_progress_box` - Video completion and position tracking
- `user_stats_box` - Aggregated user statistics
- `notifications_box` - Scheduled notification tracking

---

## 9. Key Metrics to Track (Analytics)

| Event | Parameters |
|-------|------------|
| `video_completed` | video_id, course_id, section_id, watch_time |
| `section_completed` | section_id, course_id, total_time |
| `course_completed` | course_id, total_videos, total_time |
| `next_video_clicked` | from_video_id, to_video_id |
| `interstitial_shown` | trigger_type, video_count |
| `interstitial_dismissed` | watch_duration, completed |
| `stats_page_viewed` | total_watch_time, total_videos |
| `notification_received` | notification_type |
| `notification_clicked` | notification_type |
| `app_opened_from_notification` | notification_type |

---

## Summary

This engagement strategy focuses on:

1. **Progress Visibility** - Users always know where they are and how far they've come
2. **Completion Loops** - Natural flow from one video to the next with celebration moments
3. **Balanced Monetization** - Strategic ad placements that don't disrupt the healing experience
4. **Gentle Re-engagement** - Notifications that encourage return without being pushy
5. **Offline-First** - All features work without internet, no account required

The implementation is prioritized to deliver value incrementally, starting with core progress tracking and monetization, then building toward richer engagement features.
