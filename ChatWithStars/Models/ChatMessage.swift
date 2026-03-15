import Foundation

struct ChatMessage: Identifiable, Hashable {
    let id = UUID()
    let sender: Sender
    let text: String
    let timestamp: Date

    enum Sender: Hashable {
        case user
        case star
    }
}
