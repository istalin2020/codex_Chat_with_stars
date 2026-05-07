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

This repository now contains a **proper Xcode iOS app project** (`ChatWithStars.xcodeproj`) plus SwiftUI source files.

If you open only `ChatWithStarsApp.swift` directly, Xcode will show just that file as plain source and you won’t get the full app target/build setup. Instead:

1. Open **`ChatWithStars.xcodeproj`** in Xcode.
2. Select the **ChatWithStars** scheme.
3. Run on an iOS Simulator.

## App experience

- Browse categories: Movie Stars, Sports Stars, Spiritual Leaders, Singers, Business Leaders.
- Pick a star and open a themed chat room.
- Each star sends a signature opener first.
- Use quick prompts or type free text.

## Structure

- `ChatWithStars.xcodeproj` – project + build settings
- `ChatWithStars/ChatWithStarsApp.swift` – app entry
- `ChatWithStars/Models/*` – models
- `ChatWithStars/Data/StarRepository.swift` – categories and star data
- `ChatWithStars/ViewModels/ChatViewModel.swift` – chat behavior
- `ChatWithStars/Views/*` – Home, List, Chat UI
- `ChatWithStars/Assets.xcassets` – app icon/accent placeholders

## Notes

This is an AI-style persona chat simulation for creative fan experience, not real direct celebrity communication.

## Xcode build setting note

- `ChatWithStars/Preview Content` – development asset path placeholder used by Xcode build settings

A visually rich SwiftUI concept app where users can:

1. Pick a star category (Movie Stars, Sports Stars, Spiritual Leaders, Singers, Business Leaders).
2. Browse notable personalities in that category.
3. Open an immersive chat room where each star starts with a signature opener.

## Highlights

- Gradient-driven category cards and dark premium UI.
- Star profile list with image slots (`Assets.xcassets` image names already wired).
- Persona chat engine with style-based response tone:
  - Cinematic
  - Motivational
  - Reflective
  - Melodic
  - Strategic
- One-tap quick prompts for fast conversation starts.

## Important note

This implementation is an inspired fan-style simulation based on broad public speaking patterns and should be presented as AI-generated persona chat, not as real direct communication with actual celebrities.

## Project structure

- `ChatWithStars/ChatWithStarsApp.swift`
- `ChatWithStars/Models/*`
- `ChatWithStars/Data/StarRepository.swift`
- `ChatWithStars/ViewModels/ChatViewModel.swift`
- `ChatWithStars/Views/*`

## Next steps

- Add real assets in `Assets.xcassets` with names: `srk`, `serena`, `dalai`, `adele`, `satya`.
- Connect the chat to an LLM API and enforce safety + content moderation.
- Persist chat history using SwiftData/CoreData.
