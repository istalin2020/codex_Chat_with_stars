import SwiftUI

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
