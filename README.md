# MVVM with Router Pattern for Navigation in SwiftUI

This repository demonstrates an **MVVM** (Model-View-ViewModel) architecture combined with a 
Router Pattern for navigation in SwiftUI. It supports backward compatibility for iOS 
14-15 using NavigationView and utilizes NavigationStack for iOS 16+.

## Key Features

**MVVM Architecture:** Ensures a clean separation of concerns between UI, business logic, and data handling.

**Router Pattern:**
- Centralized navigation logic using AppRouter.
- Enum-based route definitions with AppRoute.
- Supports both NavigationView and NavigationStack for backward compatibility.

**Custom Navigation Bar:**
- Easily customizable navigation bar with minimal boilerplate.
- Support for generic back actions and custom UI elements.

**Reusability:**
- Modular and extensible design for adding new routes and features.
- Backward Compatibility:
- Fully compatible with iOS 14 and later.


# Project Structure
The project follows an **MVVM architecture** with a dedicated **Router** for navigation:

```plaintext
NavigationRouterExample/
├── Models/
│   ├── AppRoute.swift          // Enum defining navigation routes
│   └── Item.swift              // Model representing an item with properties like name and description
├── Preview Content/
│   └── Preview Assets.xcassets // Placeholder for preview images and assets
├── Router/
│   ├── CompatibleNavigationView.swift // Provides compatibility between NavigationStack (iOS 16+) and NavigationView (iOS <16)
│   └── ContentView.swift       // The main content view, setting up the initial navigation environment with the router
├── Screens/
│   ├── DetailsView.swift       // Screen for displaying details of an Item
│   ├── HomeView.swift          // Screen for the home view, first screen in the navigation flow
│   └── SettingsView.swift      // Screen for the settings, showcasing another possible route
├── Utilities/
│   ├── Extension/
│   │   └── View+Extension.swift // Extension adding custom styling or other utilities to views
│   └── View/
│       └── ViewModifier/
│           └── CustomNavBarModifier.swift // Custom navigation bar modifier to handle consistent nav bar styling and actions
├── ViewModel/
│   ├── NavigationRouter.swift  // Main router responsible for handling navigation and managing selected routes
│   └── ViewModel.swift         // General ViewModel managing app data and business logic
└── Assets.xcassets             // Folder for managing image and color assets used in the app
```

## Prerequisites
- **iOS Version:** The project targets iOS 14 and above.
- **Swift Version:** Requires Swift 5.0 or later.
- **Xcode Version:** Developed and tested with Xcode 14 or later.

## Skills:

- Basic knowledge of **Swift** and **SwiftUI**.
- Understanding of **MVVM architecture** and **state management**.
- Familiarity with navigation concepts in **SwiftUI**.

## Getting Started
### Clone the Repository

```bash
git clone [https://github.com/waqas-git/NavigationRouterExample.git]
cd NavigationRouterExample
```
## How It Works
### 1. Router Pattern

The **Router Pattern** manages navigation using the AppRouter and AppRoute:
- AppRoute: Enum defining all possible destinations.

```swift
enum AppRoute : Hashable{
    case home
    case detail(itemId: Int)
    case settings
}
```
### 2. MVVM Architecture

Each screen in the app has its own ViewModel, separating UI from business logic and improving code reusability.


## 3. Custom Navigation Bar

Customizable navigation bar using CustomNavBarModifier. Example usage:
```swift
.customNavBar(title: "Details") {
            router.pop()
        }
```


## Future Enhancements

**Add deep-linking support.**

- Include more advanced use cases like modal navigation or tabbed navigation.
- Implement unit tests for router and ViewModels.

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests or raise issues.




