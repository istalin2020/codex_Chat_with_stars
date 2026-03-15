# Chat With Stars (SwiftUI)

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
