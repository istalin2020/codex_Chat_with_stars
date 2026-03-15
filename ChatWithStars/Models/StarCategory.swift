import Foundation

struct StarCategory: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let gradient: [String]
    let icon: String
}
