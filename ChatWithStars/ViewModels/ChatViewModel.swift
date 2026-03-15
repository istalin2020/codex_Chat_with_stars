import Foundation

@MainActor
final class ChatViewModel: ObservableObject {
    @Published var messages: [ChatMessage] = []
    @Published var draftText = ""

    let star: StarProfile

    init(star: StarProfile) {
        self.star = star
        messages = [
            ChatMessage(sender: .star, text: star.signatureOpening, timestamp: Date())
        ]
    }

    func sendCurrentDraft() {
        let trimmed = draftText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        draftText = ""
        messages.append(ChatMessage(sender: .user, text: trimmed, timestamp: Date()))

        let response = generateReply(for: trimmed)
        messages.append(ChatMessage(sender: .star, text: response, timestamp: Date()))
    }

    func sendPrompt(_ prompt: String) {
        draftText = prompt
        sendCurrentDraft()
    }

    private func generateReply(for input: String) -> String {
        switch star.voiceStyle {
        case .cinematic:
            return "Every scene has conflict before the applause. For ‘\(input)’, take one bold action today, one patient action tomorrow, and keep your heart larger than your fear."
        case .motivational:
            return "Great question. Break ‘\(input)’ into reps: discipline, recovery, and repetition. Small wins daily beat rare bursts of intensity."
        case .reflective:
            return "When you ask about ‘\(input)’, notice your breath and soften your judgment. Peace grows when awareness meets compassion."
        case .melodic:
            return "I hear the emotion behind ‘\(input)’. Write one honest line, speak it out loud, and let vulnerability shape your next step."
        case .strategic:
            return "For ‘\(input)’, start with purpose, then prioritize learning velocity. Build feedback loops, empower your team, and iterate with humility."
        }
    }
}
