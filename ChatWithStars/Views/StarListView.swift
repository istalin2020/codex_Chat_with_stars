import SwiftUI
import UIKit

struct StarListView: View {
    let category: StarCategory
    private var stars: [StarProfile] { StarRepository.stars(in: category) }

    var body: some View {
        ScrollView {
            VStack(spacing: 14) {
                ForEach(stars) { star in
                    NavigationLink {
                        ChatView(star: star)
                    } label: {
                        StarCard(star: star)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
        .background(Color.black.ignoresSafeArea())
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct StarCard: View {
    let star: StarProfile

    var body: some View {
        HStack(spacing: 12) {
            AvatarView(star: star)
            Image(star.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 72, height: 72)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.white.opacity(0.12), lineWidth: 1)
                }

            VStack(alignment: .leading, spacing: 4) {
                Text(star.name)
                    .font(.headline)
                    .foregroundStyle(.white)
                Text(star.title)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.75))
                Text(star.communicationStyle.prefix(2).joined(separator: " • "))
                    .font(.caption)
                    .foregroundStyle(.cyan.opacity(0.9))
            }

            Spacer()
            Image(systemName: "message.fill")
                .foregroundStyle(.yellow)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.white.opacity(0.08))
        )
    }
}

private struct AvatarView: View {
    let star: StarProfile

    var body: some View {
        if UIImage(named: star.imageName) != nil {
            Image(star.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 72, height: 72)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.white.opacity(0.12), lineWidth: 1)
                }
        } else {
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        colors: [.purple.opacity(0.8), .blue.opacity(0.8)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 72, height: 72)
                .overlay {
                    Text(initials(star.name))
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
        }
    }

    private func initials(_ name: String) -> String {
        name
            .split(separator: " ")
            .prefix(2)
            .compactMap { $0.first }
            .map(String.init)
            .joined()
    }
}
