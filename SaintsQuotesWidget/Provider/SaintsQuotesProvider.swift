//
//  SaintsQuotesProvider.swift
//  SaintsQuotesWidget
//
//  Timeline provider for the Saints Quotes widget
//

import WidgetKit
import SwiftUI

struct SaintsQuoteEntry: TimelineEntry {
    let date: Date
    let quote: SaintQuote
}

struct SaintsQuotesProvider: TimelineProvider {

    func placeholder(in context: Context) -> SaintsQuoteEntry {
        SaintsQuoteEntry(
            date: Date(),
            quote: SaintQuote(
                quote: "Lord, make me an instrument of your peace.",
                saint: "St. Francis of Assisi",
                feastDay: "October 4",
                category: .peace
            )
        )
    }

    func getSnapshot(in context: Context, completion: @escaping (SaintsQuoteEntry) -> Void) {
        let entry = SaintsQuoteEntry(
            date: Date(),
            quote: SaintsQuotesData.quoteOfTheDay()
        )
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SaintsQuoteEntry>) -> Void) {
        var entries: [SaintsQuoteEntry] = []

        // Get the current date at midnight
        let currentDate = Date()
        let calendar = Calendar.current
        let midnight = calendar.startOfDay(for: currentDate)

        // Create entry for today
        let todayQuote = SaintsQuotesData.quoteOfTheDay()
        let todayEntry = SaintsQuoteEntry(date: midnight, quote: todayQuote)
        entries.append(todayEntry)

        // Create entries for the next 7 days
        for dayOffset in 1...7 {
            if let entryDate = calendar.date(byAdding: .day, value: dayOffset, to: midnight) {
                // Calculate which quote to show based on the day of year
                let dayOfYear = calendar.ordinality(of: .day, in: .year, for: entryDate) ?? 1
                let quoteIndex = (dayOfYear - 1) % SaintsQuotesData.quotes.count
                let quote = SaintsQuotesData.quotes[quoteIndex]

                let entry = SaintsQuoteEntry(date: entryDate, quote: quote)
                entries.append(entry)
            }
        }

        // Update timeline at midnight tomorrow
        let tomorrow = calendar.date(byAdding: .day, value: 1, to: midnight) ?? currentDate
        let timeline = Timeline(entries: entries, policy: .after(tomorrow))

        completion(timeline)
    }
}
