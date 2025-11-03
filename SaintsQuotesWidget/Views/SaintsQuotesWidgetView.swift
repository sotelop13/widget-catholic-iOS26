//
//  SaintsQuotesWidgetView.swift
//  SaintsQuotesWidget
//
//  Liquid Glass UI design for the Saints Quotes widget
//

import SwiftUI
import WidgetKit

struct SaintsQuotesWidgetView: View {
    let entry: SaintsQuoteEntry

    @Environment(\.widgetFamily) var family

    var body: some View {
        switch family {
        case .systemSmall:
            SmallWidgetView(entry: entry)
        case .systemMedium:
            MediumWidgetView(entry: entry)
        case .systemLarge:
            LargeWidgetView(entry: entry)
        case .accessoryCircular:
            CircularAccessoryView(entry: entry)
        case .accessoryRectangular:
            RectangularAccessoryView(entry: entry)
        case .accessoryInline:
            InlineAccessoryView(entry: entry)
        default:
            MediumWidgetView(entry: entry)
        }
    }
}

// MARK: - Small Widget View
struct SmallWidgetView: View {
    let entry: SaintsQuoteEntry

    var body: some View {
        ZStack {
            // Liquid Glass Background
            LiquidGlassBackground(category: entry.quote.category)

            VStack(alignment: .leading, spacing: 8) {
                // Category Badge
                CategoryBadge(category: entry.quote.category)

                Spacer()

                // Quote Text
                Text(entry.quote.quote)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(.white)
                    .lineLimit(4)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)

                // Saint Name
                Text("— \(entry.quote.saint)")
                    .font(.system(size: 10, weight: .semibold))
                    .foregroundColor(.white.opacity(0.9))
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
            }
            .padding(16)
        }
    }
}

// MARK: - Medium Widget View
struct MediumWidgetView: View {
    let entry: SaintsQuoteEntry

    var body: some View {
        ZStack {
            // Liquid Glass Background
            LiquidGlassBackground(category: entry.quote.category)

            HStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 12) {
                    // Category Badge
                    CategoryBadge(category: entry.quote.category)

                    Spacer()

                    // Quote Text
                    Text(entry.quote.quote)
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.white)
                        .lineLimit(5)
                        .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)

                    // Saint Info
                    VStack(alignment: .leading, spacing: 4) {
                        Text("— \(entry.quote.saint)")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.white)
                            .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)

                        if let feastDay = entry.quote.feastDay {
                            Text("Feast Day: \(feastDay)")
                                .font(.system(size: 10, weight: .regular))
                                .foregroundColor(.white.opacity(0.8))
                                .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                        }
                    }
                }

                Spacer()
            }
            .padding(20)
        }
    }
}

// MARK: - Large Widget View
struct LargeWidgetView: View {
    let entry: SaintsQuoteEntry

    var body: some View {
        ZStack {
            // Liquid Glass Background
            LiquidGlassBackground(category: entry.quote.category)

            VStack(alignment: .leading, spacing: 20) {
                // Header
                HStack {
                    CategoryBadge(category: entry.quote.category)
                    Spacer()
                    Image(systemName: "cross.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.white.opacity(0.6))
                        .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                }

                Spacer()

                // Quote Text - Larger and more prominent
                Text(entry.quote.quote)
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(.white)
                    .lineLimit(8)
                    .shadow(color: .black.opacity(0.4), radius: 3, x: 0, y: 2)
                    .multilineTextAlignment(.leading)

                Spacer()

                // Saint Info
                VStack(alignment: .leading, spacing: 6) {
                    Text("— \(entry.quote.saint)")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)

                    if let feastDay = entry.quote.feastDay {
                        HStack {
                            Image(systemName: "calendar")
                                .font(.system(size: 11))
                            Text("Feast Day: \(feastDay)")
                                .font(.system(size: 12, weight: .regular))
                        }
                        .foregroundColor(.white.opacity(0.9))
                        .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                    }
                }
            }
            .padding(24)
        }
    }
}

// MARK: - Lock Screen Accessories

struct CircularAccessoryView: View {
    let entry: SaintsQuoteEntry

    var body: some View {
        ZStack {
            AccessoryWidgetBackground()
            Image(systemName: "cross.fill")
                .font(.system(size: 24))
        }
    }
}

struct RectangularAccessoryView: View {
    let entry: SaintsQuoteEntry

    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: "cross.fill")
                .font(.system(size: 12))
            Text(entry.quote.saint)
                .font(.system(size: 12, weight: .semibold))
                .lineLimit(1)
        }
    }
}

struct InlineAccessoryView: View {
    let entry: SaintsQuoteEntry

    var body: some View {
        Text("\(Image(systemName: "cross.fill")) \(entry.quote.saint)")
            .lineLimit(1)
    }
}

// MARK: - Reusable Components

struct LiquidGlassBackground: View {
    let category: QuoteCategory

    var gradient: LinearGradient {
        switch category {
        case .wisdom:
            return LinearGradient(
                colors: [Color.blue.opacity(0.8), Color.purple.opacity(0.6)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .prayer:
            return LinearGradient(
                colors: [Color.purple.opacity(0.8), Color.indigo.opacity(0.7)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .faith:
            return LinearGradient(
                colors: [Color.orange.opacity(0.8), Color.yellow.opacity(0.6)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .love:
            return LinearGradient(
                colors: [Color.pink.opacity(0.8), Color.red.opacity(0.7)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .hope:
            return LinearGradient(
                colors: [Color.green.opacity(0.8), Color.mint.opacity(0.6)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .peace:
            return LinearGradient(
                colors: [Color.cyan.opacity(0.8), Color.blue.opacity(0.6)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .courage:
            return LinearGradient(
                colors: [Color.orange.opacity(0.9), Color.red.opacity(0.7)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        case .humility:
            return LinearGradient(
                colors: [Color.gray.opacity(0.7), Color.secondary.opacity(0.5)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
    }

    var body: some View {
        ZStack {
            // Base gradient
            gradient

            // Liquid glass effect layers
            GeometryReader { geometry in
                // Top highlight
                Circle()
                    .fill(
                        RadialGradient(
                            colors: [.white.opacity(0.3), .clear],
                            center: .topLeading,
                            startRadius: 0,
                            endRadius: geometry.size.width * 0.8
                        )
                    )
                    .blur(radius: 20)
                    .offset(x: -geometry.size.width * 0.2, y: -geometry.size.height * 0.2)

                // Bottom glow
                Circle()
                    .fill(
                        RadialGradient(
                            colors: [.white.opacity(0.2), .clear],
                            center: .bottomTrailing,
                            startRadius: 0,
                            endRadius: geometry.size.width * 0.6
                        )
                    )
                    .blur(radius: 30)
                    .offset(x: geometry.size.width * 0.3, y: geometry.size.height * 0.3)
            }

            // Frosted glass overlay
            Rectangle()
                .fill(.ultraThinMaterial)
                .opacity(0.3)
        }
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

struct CategoryBadge: View {
    let category: QuoteCategory

    var body: some View {
        Text(category.rawValue.uppercased())
            .font(.system(size: 9, weight: .black))
            .foregroundColor(.white)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(
                Capsule()
                    .fill(.ultraThinMaterial)
                    .opacity(0.6)
            )
            .overlay(
                Capsule()
                    .stroke(.white.opacity(0.4), lineWidth: 1)
            )
            .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 2)
    }
}

// MARK: - Preview Provider
struct SaintsQuotesWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleQuote = SaintQuote(
            quote: "Lord, make me an instrument of your peace.",
            saint: "St. Francis of Assisi",
            feastDay: "October 4",
            category: .peace
        )
        let entry = SaintsQuoteEntry(date: Date(), quote: sampleQuote)

        Group {
            SaintsQuotesWidgetView(entry: entry)
                .previewContext(WidgetPreviewContext(family: .systemSmall))
                .previewDisplayName("Small")

            SaintsQuotesWidgetView(entry: entry)
                .previewContext(WidgetPreviewContext(family: .systemMedium))
                .previewDisplayName("Medium")

            SaintsQuotesWidgetView(entry: entry)
                .previewContext(WidgetPreviewContext(family: .systemLarge))
                .previewDisplayName("Large")
        }
    }
}
