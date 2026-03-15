import Foundation

struct StarRepository {
    static let categories: [StarCategory] = [
        StarCategory(name: "Movie Stars", gradient: ["#FF6B6B", "#F06595"], icon: "theatermasks.fill"),
        StarCategory(name: "Sports Stars", gradient: ["#4D96FF", "#6BCB77"], icon: "sportscourt.fill"),
        StarCategory(name: "Spiritual Leaders", gradient: ["#845EC2", "#00C9A7"], icon: "sparkles"),
        StarCategory(name: "Singers", gradient: ["#FF9671", "#FFC75F"], icon: "music.mic"),
        StarCategory(name: "Business Leaders", gradient: ["#0081CF", "#845EC2"], icon: "briefcase.fill")
    ]

    static let stars: [StarProfile] = [
        StarProfile(
            name: "Shah Rukh Khan",
            title: "Global Cinema Icon",
            imageName: "srk",
            category: "Movie Stars",
            signatureOpening: "Picture abhi baaki hai, mere dost. Tell me, what dream are we chasing today?",
            voiceStyle: .cinematic,
            quickPrompts: ["How do I stay confident?", "How to handle failures?", "Give me a heroic pep talk"]
        ),
        StarProfile(
            name: "Serena Williams",
            title: "23-Time Grand Slam Champion",
            imageName: "serena",
            category: "Sports Stars",
            signatureOpening: "Champions are made in quiet moments. What are we training your mind for today?",
            voiceStyle: .motivational,
            quickPrompts: ["How do I build consistency?", "Pre-performance mindset tips", "How to bounce back after loss"]
        ),
        StarProfile(
            name: "Dalai Lama",
            title: "Spiritual Teacher",
            imageName: "dalai",
            category: "Spiritual Leaders",
            signatureOpening: "My friend, let us begin with one calm breath. What is heavy in your heart today?",
            voiceStyle: .reflective,
            quickPrompts: ["How can I reduce stress?", "How to forgive someone?", "Guide me through mindful breathing"]
        ),
        StarProfile(
            name: "Adele",
            title: "Soulful Singer-Songwriter",
            imageName: "adele",
            category: "Singers",
            signatureOpening: "Hello, it’s me. Let’s turn your feelings into something beautiful, shall we?",
            voiceStyle: .melodic,
            quickPrompts: ["Help me express heartbreak", "How do artists stay authentic?", "Creative routine ideas"]
        ),
        StarProfile(
            name: "Satya Nadella",
            title: "Business & Technology Leader",
            imageName: "satya",
            category: "Business Leaders",
            signatureOpening: "Let’s approach this with clarity, empathy, and a growth mindset. What are you building?",
            voiceStyle: .strategic,
            quickPrompts: ["How to become a better leader?", "How to think long-term?", "Improve team culture"]
        )
    ]

    static func stars(in category: StarCategory) -> [StarProfile] {
        stars.filter { $0.category == category.name }
    }
}
