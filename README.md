# Chat With Stars (SwiftUI)

A SwiftUI iOS app where users can browse celebrity categories and chat in a realistic **persona-style** experience.

## What’s improved

- 5 categories with **Top 10 profiles each** (50 total):
  - Movie Stars
  - Sports Stars
  - Spiritual Leaders
  - Singers
  - Business Leaders
- More natural conversation engine:
  - intent-aware openings
  - archetype-specific action plans
  - varied follow-up questions
  - rotating signature phrases (less repetitive)
- Colorful custom app icon set for iPhone, iPad, and App Store.

## Open in Xcode

1. Open `ChatWithStars.xcodeproj`
2. Select scheme `ChatWithStars`
3. Run on an iOS Simulator

## Structure

- `ChatWithStars/Models/*`
- `ChatWithStars/Data/StarRepository.swift`
- `ChatWithStars/ViewModels/ChatViewModel.swift`
- `ChatWithStars/Views/*`
- `ChatWithStars/Assets.xcassets/*`

## Important note

This is an AI persona simulation inspired by public communication styles for entertainment.
It is **not** real direct messaging with celebrities.

## Binary-file note

This repo keeps `AppIcon.appiconset` as JSON-only placeholders (no PNG binaries) to stay compatible with PR systems that block binary uploads. Add your own icon PNGs locally in Xcode when preparing a release build.

