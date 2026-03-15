# Chat With Stars (SwiftUI)

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
