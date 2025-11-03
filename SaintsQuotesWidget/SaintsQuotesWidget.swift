//
//  SaintsQuotesWidget.swift
//  SaintsQuotesWidget
//
//  Daily Catholic Saints Quotes Widget with Liquid Glass Design
//  for iOS 18+
//

import WidgetKit
import SwiftUI

@main
struct SaintsQuotesWidget: Widget {
    let kind: String = "SaintsQuotesWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: SaintsQuotesProvider()) { entry in
            SaintsQuotesWidgetView(entry: entry)
                .containerBackground(for: .widget) {
                    // This provides the default background for the widget
                    Color.clear
                }
        }
        .configurationDisplayName("Saints Quotes")
        .description("Daily inspirational quotes from Catholic Saints with a beautiful Liquid Glass design.")
        .supportedFamilies([
            .systemSmall,
            .systemMedium,
            .systemLarge,
            .accessoryCircular,
            .accessoryRectangular,
            .accessoryInline
        ])
    }
}
