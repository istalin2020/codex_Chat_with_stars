import SwiftUI

struct ChatView: View {
    @StateObject private var viewModel: ChatViewModel

    init(star: StarProfile) {
        _viewModel = StateObject(wrappedValue: ChatViewModel(star: star))
    }

    var body: some View {
        VStack(spacing: 0) {
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(spacing: 10) {
                        ForEach(viewModel.messages) { message in
                            MessageBubble(message: message)
                                .id(message.id)
                        }
                    }
                    .padding()
                }
                .background(Color.black.ignoresSafeArea())
                .onChange(of: viewModel.messages.count) {
                    if let id = viewModel.messages.last?.id {
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(viewModel.star.quickPrompts, id: \.self) { prompt in
                        Button(prompt) {
                            viewModel.sendPrompt(prompt)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.purple.opacity(0.8))
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical, 8)
            .background(Color.black)

            composer
        }
        .navigationTitle(viewModel.star.name)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var composer: some View {
        HStack(spacing: 10) {
            TextField("Send a message...", text: $viewModel.draftText, axis: .vertical)
                .padding(12)
                .background(Color.white.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .foregroundStyle(.white)

            Button {
                viewModel.sendCurrentDraft()
            } label: {
                Image(systemName: "paperplane.fill")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(12)
                    .background(Circle().fill(.purple))
            }
        }
        .padding()
        .background(Color.black.opacity(0.95))
    }
}

private struct MessageBubble: View {
    let message: ChatMessage

    var body: some View {
        HStack {
            if message.sender == .user { Spacer() }

            Text(message.text)
                .padding(12)
                .foregroundStyle(.white)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(message.sender == .user ? Color.blue.opacity(0.8) : Color.white.opacity(0.14))
                )
                .frame(maxWidth: 280, alignment: message.sender == .user ? .trailing : .leading)

            if message.sender == .star { Spacer() }
        }
    }
}
