//
//  SaintQuote.swift
//  SaintsQuotesWidget
//
//  A model representing a daily quote from a Catholic Saint
//

import Foundation

struct SaintQuote: Identifiable, Codable {
    let id: UUID
    let quote: String
    let saint: String
    let feastDay: String?
    let category: QuoteCategory

    init(quote: String, saint: String, feastDay: String? = nil, category: QuoteCategory = .wisdom) {
        self.id = UUID()
        self.quote = quote
        self.saint = saint
        self.feastDay = feastDay
        self.category = category
    }
}

enum QuoteCategory: String, Codable, CaseIterable {
    case wisdom = "Wisdom"
    case prayer = "Prayer"
    case faith = "Faith"
    case love = "Love"
    case hope = "Hope"
    case peace = "Peace"
    case courage = "Courage"
    case humility = "Humility"

    var color: String {
        switch self {
        case .wisdom: return "blue"
        case .prayer: return "purple"
        case .faith: return "gold"
        case .love: return "red"
        case .hope: return "green"
        case .peace: return "cyan"
        case .courage: return "orange"
        case .humility: return "gray"
        }
    }
}
