import Foundation

struct StarProfile: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let title: String
    let imageName: String
    let category: String
    let signatureOpening: String
    let quickPrompts: [String]
    let archetype: Archetype
    let communicationStyle: [String]
    let focusAreas: [String]
    let catchphrases: [String]

    enum Archetype: String, Hashable {
        case cinematic
        case eliteAthlete
        case spiritualGuide
        case singerSongwriter
        case businessStrategist
    }
}
