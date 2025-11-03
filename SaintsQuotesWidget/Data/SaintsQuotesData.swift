//
//  SaintsQuotesData.swift
//  SaintsQuotesWidget
//
//  Collection of Catholic Saints quotes for daily inspiration
//

import Foundation

struct SaintsQuotesData {

    static let quotes: [SaintQuote] = [
        // St. Francis of Assisi
        SaintQuote(
            quote: "Start by doing what's necessary; then do what's possible; and suddenly you are doing the impossible.",
            saint: "St. Francis of Assisi",
            feastDay: "October 4",
            category: .courage
        ),

        SaintQuote(
            quote: "Lord, make me an instrument of your peace.",
            saint: "St. Francis of Assisi",
            feastDay: "October 4",
            category: .peace
        ),

        // St. Thérèse of Lisieux
        SaintQuote(
            quote: "Miss no single opportunity of making some small sacrifice, here by a smiling look, there by a kindly word.",
            saint: "St. Thérèse of Lisieux",
            feastDay: "October 1",
            category: .love
        ),

        SaintQuote(
            quote: "The splendor of the rose and the whiteness of the lily do not rob the little violet of its scent nor the daisy of its simple charm.",
            saint: "St. Thérèse of Lisieux",
            feastDay: "October 1",
            category: .humility
        ),

        // St. Augustine
        SaintQuote(
            quote: "Pray as though everything depended on God. Work as though everything depended on you.",
            saint: "St. Augustine of Hippo",
            feastDay: "August 28",
            category: .prayer
        ),

        SaintQuote(
            quote: "Our hearts are restless until they rest in You.",
            saint: "St. Augustine of Hippo",
            feastDay: "August 28",
            category: .faith
        ),

        // St. Teresa of Ávila
        SaintQuote(
            quote: "Let nothing disturb you, let nothing frighten you. All things are passing away: God never changes.",
            saint: "St. Teresa of Ávila",
            feastDay: "October 15",
            category: .peace
        ),

        SaintQuote(
            quote: "Christ has no body now but yours. No hands, no feet on earth but yours.",
            saint: "St. Teresa of Ávila",
            feastDay: "October 15",
            category: .faith
        ),

        // St. Ignatius of Loyola
        SaintQuote(
            quote: "Teach us to give and not to count the cost.",
            saint: "St. Ignatius of Loyola",
            feastDay: "July 31",
            category: .love
        ),

        SaintQuote(
            quote: "Go forth and set the world on fire.",
            saint: "St. Ignatius of Loyola",
            feastDay: "July 31",
            category: .courage
        ),

        // St. Thomas Aquinas
        SaintQuote(
            quote: "To one who has faith, no explanation is necessary. To one without faith, no explanation is possible.",
            saint: "St. Thomas Aquinas",
            feastDay: "January 28",
            category: .faith
        ),

        SaintQuote(
            quote: "Three things are necessary for the salvation of man: to know what he ought to believe; to know what he ought to desire; and to know what he ought to do.",
            saint: "St. Thomas Aquinas",
            feastDay: "January 28",
            category: .wisdom
        ),

        // St. Padre Pio
        SaintQuote(
            quote: "Pray, hope, and don't worry. Worry is useless. God is merciful and will hear your prayer.",
            saint: "St. Padre Pio",
            feastDay: "September 23",
            category: .hope
        ),

        SaintQuote(
            quote: "Prayer is the best weapon we have; it is the key to God's heart.",
            saint: "St. Padre Pio",
            feastDay: "September 23",
            category: .prayer
        ),

        // St. John Paul II
        SaintQuote(
            quote: "Do not abandon yourselves to despair. We are the Easter people and hallelujah is our song.",
            saint: "St. John Paul II",
            feastDay: "October 22",
            category: .hope
        ),

        SaintQuote(
            quote: "Be not afraid.",
            saint: "St. John Paul II",
            feastDay: "October 22",
            category: .courage
        ),

        // St. Catherine of Siena
        SaintQuote(
            quote: "Be who God meant you to be and you will set the world on fire.",
            saint: "St. Catherine of Siena",
            feastDay: "April 29",
            category: .courage
        ),

        SaintQuote(
            quote: "Start being brave about everything. Drive out darkness and spread light.",
            saint: "St. Catherine of Siena",
            feastDay: "April 29",
            category: .courage
        ),

        // St. Benedict
        SaintQuote(
            quote: "Prefer nothing to the love of Christ.",
            saint: "St. Benedict of Nursia",
            feastDay: "July 11",
            category: .love
        ),

        SaintQuote(
            quote: "Listen carefully, my child, to your master's precepts, and incline the ear of your heart.",
            saint: "St. Benedict of Nursia",
            feastDay: "July 11",
            category: .wisdom
        ),

        // St. Maximilian Kolbe
        SaintQuote(
            quote: "Only love creates.",
            saint: "St. Maximilian Kolbe",
            feastDay: "August 14",
            category: .love
        ),

        // St. Mother Teresa
        SaintQuote(
            quote: "Not all of us can do great things. But we can do small things with great love.",
            saint: "St. Teresa of Calcutta",
            feastDay: "September 5",
            category: .love
        ),

        SaintQuote(
            quote: "If you judge people, you have no time to love them.",
            saint: "St. Teresa of Calcutta",
            feastDay: "September 5",
            category: .love
        ),

        SaintQuote(
            quote: "Peace begins with a smile.",
            saint: "St. Teresa of Calcutta",
            feastDay: "September 5",
            category: .peace
        ),

        // St. Jerome
        SaintQuote(
            quote: "Ignorance of Scripture is ignorance of Christ.",
            saint: "St. Jerome",
            feastDay: "September 30",
            category: .wisdom
        ),

        // St. Anthony of Padua
        SaintQuote(
            quote: "Actions speak louder than words; let your words teach and your actions speak.",
            saint: "St. Anthony of Padua",
            feastDay: "June 13",
            category: .wisdom
        ),

        // St. Joan of Arc
        SaintQuote(
            quote: "I am not afraid. I was born to do this.",
            saint: "St. Joan of Arc",
            feastDay: "May 30",
            category: .courage
        ),

        // St. Philip Neri
        SaintQuote(
            quote: "Cheerfulness strengthens the heart and makes us persevere in a good life.",
            saint: "St. Philip Neri",
            feastDay: "May 26",
            category: .hope
        ),

        // St. Francis de Sales
        SaintQuote(
            quote: "Have patience with all things, but chiefly have patience with yourself.",
            saint: "St. Francis de Sales",
            feastDay: "January 24",
            category: .humility
        ),

        SaintQuote(
            quote: "Do not lose your inner peace for anything whatsoever, even if your whole world seems upset.",
            saint: "St. Francis de Sales",
            feastDay: "January 24",
            category: .peace
        ),

        // St. Rose of Lima
        SaintQuote(
            quote: "Apart from the cross, there is no other ladder by which we may get to heaven.",
            saint: "St. Rose of Lima",
            feastDay: "August 23",
            category: .faith
        )
    ]

    /// Get a quote for today based on the day of the year
    static func quoteOfTheDay() -> SaintQuote {
        let dayOfYear = Calendar.current.ordinality(of: .day, in: .year, for: Date()) ?? 1
        let index = (dayOfYear - 1) % quotes.count
        return quotes[index]
    }

    /// Get a random quote
    static func randomQuote() -> SaintQuote {
        return quotes.randomElement() ?? quotes[0]
    }

    /// Get quotes by category
    static func quotes(for category: QuoteCategory) -> [SaintQuote] {
        return quotes.filter { $0.category == category }
    }
}
