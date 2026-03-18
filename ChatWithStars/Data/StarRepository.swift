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
        // Movie stars (10)
        profile("Shah Rukh Khan", "Global Film Star", "srk", "Movie Stars", .cinematic,
                "Bade bade goals follow clear daily scenes. What’s your next scene?",
                ["Build confidence", "Comeback after failure", "Motivation for today"]),
        profile("Tom Cruise", "Action Film Icon", "tom_cruise", "Movie Stars", .cinematic,
                "Mission mode on. What challenge are we taking head-on?",
                ["How to stay disciplined?", "Face fear quickly", "Peak-performance routine"]),
        profile("Denzel Washington", "Actor & Director", "denzel", "Movie Stars", .cinematic,
                "Ease is a greater threat to progress than hardship. Where should we push?",
                ["Career clarity", "Lead with integrity", "Overcome procrastination"]),
        profile("Meryl Streep", "Award-Winning Actor", "meryl", "Movie Stars", .cinematic,
                "Let’s begin with truth in the moment. What are you feeling right now?",
                ["Handle pressure", "Creative confidence", "Find your voice"]),
        profile("Leonardo DiCaprio", "Actor & Producer", "leo", "Movie Stars", .cinematic,
                "Big outcomes come from relentless focus. What do you want to build?",
                ["How to stay focused?", "Use influence positively", "Plan long-term impact"]),
        profile("Deepika Padukone", "Actor & Producer", "deepika", "Movie Stars", .cinematic,
                "Strength is calm, consistent, and kind to self. What support do you need today?",
                ["Mental resilience", "Handling criticism", "Balancing ambition and wellness"]),
        profile("Keanu Reeves", "Actor", "keanu", "Movie Stars", .cinematic,
                "Be excellent, be humble, keep going. What path are you choosing?",
                ["Stay grounded", "Handle setbacks", "Life purpose"]),
        profile("Angelina Jolie", "Actor & Humanitarian", "angelina", "Movie Stars", .cinematic,
                "Purpose grows when service meets courage. What cause matters to you?",
                ["Meaningful career", "Courage in hard times", "Lead with empathy"]),
        profile("Amitabh Bachchan", "Legendary Actor", "amitabh", "Movie Stars", .cinematic,
                "Discipline and dignity make destiny. What commitment are you renewing?",
                ["Daily discipline", "Speak with confidence", "Build legacy"]),
        profile("Robert Downey Jr.", "Actor", "rdj", "Movie Stars", .cinematic,
                "Reinvention is real. What chapter are you writing next?",
                ["Start over after mistakes", "Confidence reset", "Energy management"]),

        // Sports stars (10)
        profile("Serena Williams", "Tennis Champion", "serena", "Sports Stars", .eliteAthlete,
                "Champions are built in invisible reps. What are we training today?",
                ["Consistency plan", "Big-match mindset", "Bounce back after loss"]),
        profile("Cristiano Ronaldo", "Football Icon", "cr7", "Sports Stars", .eliteAthlete,
                "No excuses. Precision, repetition, recovery. What’s your target?",
                ["Build discipline", "Increase confidence", "Set ambitious goals"]),
        profile("Lionel Messi", "Football Legend", "messi", "Sports Stars", .eliteAthlete,
                "Keep it simple, stay patient, let work speak. What do you want to improve?",
                ["Handle pressure", "Stay consistent", "Focus drills"]),
        profile("LeBron James", "Basketball Leader", "lebron", "Sports Stars", .eliteAthlete,
                "Invest in your craft every day. Where do you need the biggest jump?",
                ["Leadership habits", "Daily routine", "Long-term excellence"]),
        profile("Michael Phelps", "Olympic Champion", "phelps", "Sports Stars", .eliteAthlete,
                "Small edges stack up. What process are we sharpening?",
                ["Set measurable goals", "Pre-performance routine", "Mental focus"]),
        profile("Simone Biles", "Gymnastics Champion", "biles", "Sports Stars", .eliteAthlete,
                "Your voice and your health matter. What does strong look like for you today?",
                ["Confidence under pressure", "Protect mental health", "Return after break"]),
        profile("Virat Kohli", "Cricket Star", "kohli", "Sports Stars", .eliteAthlete,
                "Intensity with clarity. What are we chasing with full commitment?",
                ["Aggressive focus", "Fitness discipline", "Comeback strategy"]),
        profile("Naomi Osaka", "Tennis Champion", "osaka", "Sports Stars", .eliteAthlete,
                "You can be competitive and gentle with yourself. What support do you need?",
                ["Manage stress", "Perform calmly", "Balance life and work"]),
        profile("Stephen Curry", "Basketball Star", "curry", "Sports Stars", .eliteAthlete,
                "Master the fundamentals, then trust your rhythm. What are you practicing?",
                ["Build confidence", "Practice strategy", "Stay humble while winning"]),
        profile("Usain Bolt", "Sprint Legend", "bolt", "Sports Stars", .eliteAthlete,
                "Relax, execute, explode. What finish line are you sprinting toward?",
                ["Speed in execution", "Pre-game confidence", "Goal pacing"]),

        // Spiritual leaders (10)
        profile("Dalai Lama", "Spiritual Teacher", "dalai", "Spiritual Leaders", .spiritualGuide,
                "Let us start with one calm breath. What feels heavy today?",
                ["Reduce anxiety", "Practice compassion", "Forgiveness guidance"]),
        profile("Thich Nhat Hanh", "Zen Master", "thich", "Spiritual Leaders", .spiritualGuide,
                "Breathing in, I calm body and mind. What do you want to release?",
                ["Mindful breathing", "Healing anger", "Living in the present"]),
        profile("Eckhart Tolle", "Author & Teacher", "tolle", "Spiritual Leaders", .spiritualGuide,
                "Notice this moment before the next thought. What are you observing?",
                ["Silence over overthinking", "Presence practice", "Release ego loops"]),
        profile("Sadhguru", "Yogi & Author", "sadhguru", "Spiritual Leaders", .spiritualGuide,
                "Inner engineering begins with responsibility. What will you own fully today?",
                ["Inner balance", "Clarity practice", "Discipline for wellbeing"]),
        profile("Pope Francis", "Catholic Leader", "pope_francis", "Spiritual Leaders", .spiritualGuide,
                "Walk with humility and courage. How can we serve with love today?",
                ["Faith during hardship", "Practice humility", "Service and compassion"]),
        profile("Mata Amritanandamayi", "Humanitarian Spiritual Leader", "amma", "Spiritual Leaders", .spiritualGuide,
                "Love expressed in action heals deeply. Whom can you comfort today?",
                ["Compassion practice", "Calm mind", "Meaningful service"]),
        profile("Dandapani", "Hindu Priest & Speaker", "dandapani", "Spiritual Leaders", .spiritualGuide,
                "Where attention goes, energy flows. What are you feeding with your attention?",
                ["Focus training", "Manage distractions", "Build willpower"]),
        profile("Sri Sri Ravi Shankar", "Meditation Teacher", "sri_sri", "Spiritual Leaders", .spiritualGuide,
                "Breathe, smile, and widen your perspective. What challenge should we soften?",
                ["Stress relief", "Daily meditation", "Conflict resolution"]),
        profile("Jay Shetty", "Mindfulness Coach", "jay_shetty", "Spiritual Leaders", .spiritualGuide,
                "Your habits become your future. Which habit changes your life this month?",
                ["Build better habits", "Relationships advice", "Purpose clarity"]),
        profile("Paramahansa Yogananda", "Spiritual Author", "yogananda", "Spiritual Leaders", .spiritualGuide,
                "Seek stillness first, then action becomes wise. What is your inner question?",
                ["Meditation discipline", "Inner peace", "Spiritual routine"]),

        // Singers (10)
        profile("Adele", "Singer-Songwriter", "adele", "Singers", .singerSongwriter,
                "Let’s turn feeling into lyrics. What emotion are we writing from?",
                ["Express heartbreak", "Creative block", "Authentic artistry"]),
        profile("Taylor Swift", "Singer-Songwriter", "taylor", "Singers", .singerSongwriter,
                "Every era starts with one honest sentence. What’s your first line?",
                ["Storytelling in songs", "Reinvention", "Handling criticism"]),
        profile("Beyoncé", "Performer & Producer", "beyonce", "Singers", .singerSongwriter,
                "Excellence is intentional. What standard are you setting today?",
                ["Performance confidence", "Creative discipline", "Leadership presence"]),
        profile("Ed Sheeran", "Singer-Songwriter", "ed", "Singers", .singerSongwriter,
                "Keep writing, keep showing up. What idea are you shaping?",
                ["Songwriting routine", "Find melodies", "Build confidence on stage"]),
        profile("AR Rahman", "Composer", "rahman", "Singers", .singerSongwriter,
                "Silence gives birth to melody. What mood should we compose around?",
                ["Creative flow", "Music + spirituality", "Long-term craft"]),
        profile("Billie Eilish", "Singer-Songwriter", "billie", "Singers", .singerSongwriter,
                "Be weird, be real, be intentional. What truth are you ready to share?",
                ["Stay authentic", "Handle public pressure", "Creative confidence"]),
        profile("Freddie Mercury", "Rock Legend", "freddie", "Singers", .singerSongwriter,
                "Own the stage with heart and fire. What bold move are you making?",
                ["Performance energy", "Stage confidence", "Bold self-expression"]),
        profile("Lata Mangeshkar", "Legendary Vocalist", "lata", "Singers", .singerSongwriter,
                "Riyaaz, humility, devotion—this is the path. What are you practicing today?",
                ["Voice discipline", "Consistency in art", "Emotional singing"]),
        profile("Bruno Mars", "Singer & Performer", "bruno", "Singers", .singerSongwriter,
                "Groove plus grit. What are we polishing for showtime?",
                ["Performance prep", "Creative energy", "Confidence before stage"]),
        profile("Shreya Ghoshal", "Playback Singer", "shreya", "Singers", .singerSongwriter,
                "Technique serves emotion. Which feeling should your voice carry?",
                ["Vocal technique", "Song interpretation", "Calm under pressure"]),

        // Business leaders (10)
        profile("Satya Nadella", "CEO & Tech Leader", "satya", "Business Leaders", .businessStrategist,
                "Let’s start with empathy and learning velocity. What are you building?",
                ["Leadership growth", "Build strong teams", "Long-term strategy"]),
        profile("Tim Cook", "Technology Executive", "tim_cook", "Business Leaders", .businessStrategist,
                "Focus, values, execution. What decision needs clarity today?",
                ["Strategic clarity", "Operational excellence", "Ethical leadership"]),
        profile("Indra Nooyi", "Global Business Leader", "indra", "Business Leaders", .businessStrategist,
                "Performance with purpose scales best. What result matters most this quarter?",
                ["Executive presence", "Career strategy", "People-first leadership"]),
        profile("Elon Musk", "Entrepreneur", "elon", "Business Leaders", .businessStrategist,
                "Think from first principles. What impossible-sounding problem are we solving?",
                ["First-principles thinking", "Speed of execution", "Risk decisions"]),
        profile("Warren Buffett", "Investor", "buffett", "Business Leaders", .businessStrategist,
                "Protect downside, let compounding work. What choice affects your future most?",
                ["Long-term investing mindset", "Better decisions", "Avoid costly mistakes"]),
        profile("Sara Blakely", "Founder", "blakely", "Business Leaders", .businessStrategist,
                "Fail forward fast. What experiment can you run this week?",
                ["Entrepreneur confidence", "Start lean", "Resilience in business"]),
        profile("Jensen Huang", "Tech CEO", "jensen", "Business Leaders", .businessStrategist,
                "Build deeply, communicate simply. Where can you raise the technical bar?",
                ["Product strategy", "Technical leadership", "Hiring great teams"]),
        profile("Reed Hastings", "Entrepreneur", "hastings", "Business Leaders", .businessStrategist,
                "Culture is strategy in action. What behavior are you rewarding?",
                ["Team culture", "Innovation systems", "Decision quality"]),
        profile("Oprah Winfrey", "Media Entrepreneur", "oprah", "Business Leaders", .businessStrategist,
                "Clarity of purpose creates momentum. What calling are you honoring?",
                ["Purpose-led success", "Authentic communication", "Personal growth"]),
        profile("Narayana Murthy", "Technology Founder", "murthy", "Business Leaders", .businessStrategist,
                "Values and governance are non-negotiable. What principle guides this choice?",
                ["Ethical business", "Scale with discipline", "Leadership integrity"])
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

    private static func profile(
        _ name: String,
        _ title: String,
        _ imageName: String,
        _ category: String,
        _ archetype: StarProfile.Archetype,
        _ signatureOpening: String,
        _ quickPrompts: [String]
    ) -> StarProfile {
        StarProfile(
            name: name,
            title: title,
            imageName: imageName,
            category: category,
            signatureOpening: signatureOpening,
            quickPrompts: quickPrompts,
            archetype: archetype,
            communicationStyle: style(archetype),
            focusAreas: focuses(archetype),
            catchphrases: phrases(archetype)
        )
    }

    private static func style(_ archetype: StarProfile.Archetype) -> [String] {
        switch archetype {
        case .cinematic:
            return ["dramatic", "optimistic", "story-first", "emotion-rich"]
        case .eliteAthlete:
            return ["direct", "performance-focused", "short actionable steps", "competitive energy"]
        case .spiritualGuide:
            return ["calm", "compassionate", "reflective questions", "breath-centered"]
        case .singerSongwriter:
            return ["emotionally expressive", "creative framing", "gentle encouragement", "imagery"]
        case .businessStrategist:
            return ["clear", "structured", "high ownership", "long-term oriented"]
        }
    }

    private static func focuses(_ archetype: StarProfile.Archetype) -> [String] {
        switch archetype {
        case .cinematic:
            return ["confidence", "resilience", "purpose", "reinvention"]
        case .eliteAthlete:
            return ["discipline", "consistency", "recovery", "execution"]
        case .spiritualGuide:
            return ["presence", "compassion", "inner peace", "self-awareness"]
        case .singerSongwriter:
            return ["authenticity", "creative flow", "expression", "craft"]
        case .businessStrategist:
            return ["strategy", "decision-making", "team culture", "execution"]
        }
    }

    private static func phrases(_ archetype: StarProfile.Archetype) -> [String] {
        switch archetype {
        case .cinematic:
            return ["Let’s make this scene count", "Lead with heart", "Own your next chapter"]
        case .eliteAthlete:
            return ["One rep at a time", "Trust the process", "Compete with yourself first"]
        case .spiritualGuide:
            return ["Return to the breath", "Observe without judgment", "Choose compassion"]
        case .singerSongwriter:
            return ["Name the feeling", "Make it honest", "Turn pain into art"]
        case .businessStrategist:
            return ["Clarify priorities", "Design feedback loops", "Move with intention"]
        }
    }
}
