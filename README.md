# Saints Quotes Widget 📿

A beautiful iOS widget featuring daily inspirational quotes from Catholic Saints, designed with a stunning **Liquid Glass** visual effect.

## Features

✨ **30+ Inspirational Quotes** from beloved Catholic Saints
🎨 **Liquid Glass Design** with frosted glass effects and dynamic gradients
📅 **Daily Updates** - New quote automatically every day
📱 **Multiple Widget Sizes** - Small, Medium, Large, and Lock Screen widgets
🎯 **8 Categories** - Wisdom, Prayer, Faith, Love, Hope, Peace, Courage, Humility
🌈 **Color-Coded** - Each category has its own beautiful gradient theme

## Saints Featured

- St. Francis of Assisi
- St. Thérèse of Lisieux
- St. Augustine of Hippo
- St. Teresa of Ávila
- St. Ignatius of Loyola
- St. Thomas Aquinas
- St. Padre Pio
- St. John Paul II
- St. Catherine of Siena
- St. Teresa of Calcutta (Mother Teresa)
- St. Francis de Sales
- St. Joan of Arc
- And many more...

## Requirements

- iOS 18.0 or later
- Xcode 16.0 or later
- Swift 5.9 or later

## Installation

### Option 1: Add to Existing iOS App

1. **Create a Widget Extension** in your existing iOS project:
   - Open your project in Xcode
   - File → New → Target
   - Select "Widget Extension"
   - Name it "SaintsQuotesWidget"
   - Click Finish

2. **Copy the source files** into your widget extension:
   ```
   SaintsQuotesWidget/
   ├── SaintsQuotesWidget.swift (Main widget file)
   ├── Models/
   │   └── SaintQuote.swift
   ├── Data/
   │   └── SaintsQuotesData.swift
   ├── Provider/
   │   └── SaintsQuotesProvider.swift
   ├── Views/
   │   └── SaintsQuotesWidgetView.swift
   ├── Assets.xcassets/
   └── Info.plist
   ```

3. **Build and Run** your app with the widget extension

### Option 2: Create New Xcode Project

1. **Create a new iOS App project** in Xcode:
   - Open Xcode
   - File → New → Project
   - Select "iOS App"
   - Name it "SaintsQuotesApp"
   - Click Next and Create

2. **Add a Widget Extension**:
   - File → New → Target
   - Select "Widget Extension"
   - Name it "SaintsQuotesWidget"
   - Make sure "Include Configuration Intent" is unchecked
   - Click Finish

3. **Replace the widget files** with the source code from this repository

4. **Build and Run**

## Project Structure

```
SaintsQuotesWidget/
│
├── SaintsQuotesWidget.swift          # Main widget entry point
│
├── Models/
│   └── SaintQuote.swift              # Data model for quotes
│
├── Data/
│   └── SaintsQuotesData.swift        # Collection of 30+ saint quotes
│
├── Provider/
│   └── SaintsQuotesProvider.swift    # Timeline provider for widget updates
│
├── Views/
│   └── SaintsQuotesWidgetView.swift  # Liquid Glass UI components
│
├── Assets.xcassets/                  # Asset catalog
│   ├── AppIcon.appiconset/
│   └── WidgetBackground.colorset/
│
└── Info.plist                        # Widget configuration
```

## Usage

### Adding the Widget to Your Home Screen

1. **Long press** on your iPhone home screen
2. Tap the **+** button in the top-left corner
3. Search for "**Saints Quotes**"
4. Choose your preferred size:
   - **Small**: Compact quote display
   - **Medium**: Quote with saint name and feast day
   - **Large**: Full quote with detailed information
5. Tap "**Add Widget**"

### Adding to Lock Screen (iOS 18+)

1. **Long press** on your lock screen
2. Tap "**Customize**"
3. Select the widget area
4. Search for "**Saints Quotes**"
5. Choose from:
   - **Circular**: Shows a cross icon
   - **Rectangular**: Displays saint name
   - **Inline**: Minimal text display

## Customization

### Adding More Quotes

Edit `SaintsQuotesData.swift` and add new quotes to the `quotes` array:

```swift
SaintQuote(
    quote: "Your inspiring quote here",
    saint: "St. Name",
    feastDay: "Month Day",
    category: .wisdom  // or .prayer, .faith, .love, etc.
)
```

### Changing Colors

Modify the gradient colors in `SaintsQuotesWidgetView.swift` in the `LiquidGlassBackground` struct:

```swift
case .yourCategory:
    return LinearGradient(
        colors: [Color.blue.opacity(0.8), Color.purple.opacity(0.6)],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
```

### Update Frequency

The widget automatically updates at midnight each day. To change this, modify the timeline policy in `SaintsQuotesProvider.swift`:

```swift
let timeline = Timeline(entries: entries, policy: .after(tomorrow))
```

## Design Features

### Liquid Glass Effect

The widget uses multiple layering techniques to achieve the liquid glass look:

1. **Base Gradient**: Category-specific color gradients
2. **Radial Highlights**: White gradient circles for depth
3. **Blur Effects**: Soft blur for glass-like appearance
4. **Ultra Thin Material**: iOS frosted glass material
5. **Shadows**: Text shadows for readability
6. **Rounded Corners**: Continuous corner radius for smooth edges

### Category Colors

- 🔵 **Wisdom**: Blue → Purple
- 🟣 **Prayer**: Purple → Indigo
- 🟡 **Faith**: Orange → Yellow
- ❤️ **Love**: Pink → Red
- 💚 **Hope**: Green → Mint
- 🩵 **Peace**: Cyan → Blue
- 🟠 **Courage**: Orange → Red
- ⚫ **Humility**: Gray → Secondary

## Technical Details

- **Timeline Provider**: Provides 7-day timeline, updates daily at midnight
- **Quote Selection**: Rotates through quotes based on day of year
- **Widget Families**: Supports all iOS widget sizes
- **Lock Screen Support**: Includes accessory widgets for iOS 18+
- **Performance**: Lightweight, minimal battery impact
- **Data**: All quotes stored locally, no network required

## Troubleshooting

### Widget Not Appearing

- Make sure your deployment target is iOS 18.0+
- Clean build folder: Product → Clean Build Folder
- Restart Xcode and rebuild

### Widget Not Updating

- Widgets update automatically at midnight
- Force refresh by removing and re-adding the widget
- Check that the app has been run at least once

### Build Errors

- Ensure all files are added to the widget extension target
- Check that Info.plist is properly configured
- Verify bundle identifier matches your app

## Future Enhancements

Potential features to add:

- [ ] User-selectable favorite saints
- [ ] Share quote functionality
- [ ] Different visual themes (Classic, Modern, Minimal)
- [ ] Multiple languages support
- [ ] Widget configuration for category filtering
- [ ] Seasonal/liturgical calendar integration
- [ ] Audio prayers

## Contributing

Feel free to:
- Add more saint quotes
- Improve the visual design
- Fix bugs or enhance performance
- Suggest new features

## License

This project is open source and available for personal and educational use.

## Credits

Quotes compiled from various Catholic sources and saint writings.

---

**Made with** ❤️ **and** 🙏 **for Catholic faith inspiration**

*"Pray, hope, and don't worry." - St. Padre Pio*
