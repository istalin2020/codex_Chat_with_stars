import SwiftUI

struct HomeView: View {
    private let categories = StarRepository.categories

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color.black, Color(red: 0.12, green: 0.07, blue: 0.20)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                ScrollView {
                    VStack(alignment: .leading, spacing: 18) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Chat with Stars ✨")
                                .font(.system(size: 34, weight: .heavy, design: .rounded))
                            Text("Choose a category, pick your icon, and start a premium fan-style conversation.")
                                .foregroundStyle(.secondary)
                        }
                        .foregroundStyle(.white)
                        .padding(.top, 12)

                        ForEach(categories) { category in
                            NavigationLink(value: category) {
                                CategoryCard(category: category)
                            }
                            .buttonStyle(.plain)
                        }

                        Text("AI persona simulation inspired by public communication styles — not real celebrity DMs.")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                            .padding(.top, 10)
                    }
                    .padding()
                }
            }
            .navigationDestination(for: StarCategory.self) { category in
                StarListView(category: category)
            }
        }
    }
}

private struct CategoryCard: View {
    let category: StarCategory

    var body: some View {
        HStack(spacing: 14) {
            Circle()
                .fill(.white.opacity(0.2))
                .frame(width: 50, height: 50)
                .overlay {
                    Image(systemName: category.icon)
                        .foregroundStyle(.white)
                        .font(.title3)
                }

            VStack(alignment: .leading, spacing: 4) {
                Text(category.name)
                    .font(.headline)
                    .foregroundStyle(.white)
                Text("Tap to explore")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.8))
            }

            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(.white.opacity(0.8))
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(
                    LinearGradient(
                        colors: category.gradient.map { Color(hex: $0) },
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        )
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 1, 1, 1)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
