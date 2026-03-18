import Foundation

@MainActor
final class ChatViewModel: ObservableObject {
    @Published var messages: [ChatMessage] = []
    @Published var draftText = ""

    let star: StarProfile
    private var turnIndex = 0

    init(star: StarProfile) {
        self.star = star

        messages = [
            ChatMessage(
                sender: .star,
                text: "🟣 Persona mode: inspired by \(star.name)’s public communication style for entertainment.",
                timestamp: Date()
            ),
            ChatMessage(sender: .star, text: star.signatureOpening, timestamp: Date())
        ]
    }

    func sendCurrentDraft() {
        let trimmed = draftText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }

        draftText = ""
        turnIndex += 1
        messages.append(ChatMessage(sender: .user, text: trimmed, timestamp: Date()))

        let response = generateReply(for: trimmed)
        messages.append(ChatMessage(sender: .star, text: response, timestamp: Date()))
    }

    func sendPrompt(_ prompt: String) {
        draftText = prompt
        sendCurrentDraft()
    }

    private func generateReply(for input: String) -> String {
        let lower = input.lowercased()
        let opening = openingLine(lower)
        let action = actionPlan(lower)
        let followUp = followUpQuestion(lower)
        let signature = signaturePhrase()

        return "\(opening) \(action) \(signature) \(followUp)"
            .replacingOccurrences(of: "  ", with: " ")
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }

    private func openingLine(_ lower: String) -> String {
        let starters: [String]

        if lower.contains("fail") || lower.contains("loss") || lower.contains("mistake") {
            starters = [
                "I hear the weight in that.",
                "Setbacks sting, but they also reveal your edge.",
                "This is a hard moment, and you’re handling it with courage."
            ]
        } else if lower.contains("confiden") || lower.contains("fear") || lower.contains("anx") {
            starters = [
                "Confidence is built, not gifted.",
                "Fear can sit in the car, but it doesn’t drive.",
                "You don’t need perfect certainty to move forward."
            ]
        } else if lower.contains("love") || lower.contains("heart") || lower.contains("relationship") {
            starters = [
                "Let’s protect both honesty and respect here.",
                "When the heart is involved, clarity matters even more.",
                "This deserves patience, not panic."
            ]
        } else if lower.contains("career") || lower.contains("business") || lower.contains("money") {
            starters = [
                "Great—this is a strategic question.",
                "Let’s make this practical and measurable.",
                "Good call. We can turn this into a clear plan."
            ]
        } else {
            starters = [
                "I’m with you.",
                "Good question.",
                "Let’s work this through together."
            ]
        }

        return pick(starters)
    }

    private func actionPlan(_ lower: String) -> String {
        switch star.archetype {
        case .cinematic:
            return "Write your next 3 scenes: one brave move today, one disciplined habit this week, and one long-game goal for the month."
        case .eliteAthlete:
            return "Use a training frame: (1) clear target, (2) focused reps, (3) recovery and review. Repeat daily."
        case .spiritualGuide:
            return "Pause for 3 slow breaths, name the emotion without judgment, then choose one compassionate action in the next hour."
        case .singerSongwriter:
            return "Capture one honest line about what you feel, shape it into a short verse, then refine the rhythm after a break."
        case .businessStrategist:
            return "Define the objective, rank top 3 priorities, assign owners, and schedule a feedback checkpoint within 7 days."
        }
    }

    private func followUpQuestion(_ lower: String) -> String {
        if lower.contains("today") || lower.contains("now") {
            return "What is the single action you’ll commit to in the next 30 minutes?"
        }
        if lower.contains("team") {
            return "Who on your team needs the clearest expectation from you right now?"
        }
        if lower.contains("stress") || lower.contains("overwhelm") {
            return "What would make tonight feel 10% lighter?"
        }
        return "Want me to turn this into a 7-day plan for you?"
    }

    private func signaturePhrase() -> String {
        pick(star.catchphrases)
    }

    private func pick(_ options: [String]) -> String {
        guard !options.isEmpty else { return "" }
        let idx = abs((turnIndex * 7 + star.name.hashValue) % options.count)
        return options[idx]
    }
}
