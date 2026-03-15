import Foundation

struct StarProfile: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let title: String
    let imageName: String
    let category: String
    let signatureOpening: String
    let voiceStyle: VoiceStyle
    let quickPrompts: [String]

    enum VoiceStyle: String, Hashable {
        case cinematic
        case motivational
        case reflective
        case melodic
        case strategic
    }
}
