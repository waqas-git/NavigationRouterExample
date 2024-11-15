### MVVM with Router Pattern for Navigation in SwiftUI

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


## Project Structure
The project follows an **MVVM architecture** with a dedicated **Router** for navigation:

ProjectName/
NavigationRouterExample/                  // Root folder for the project

├── Models/                                // Contains data models used within the app
│   ├── AppRoute.swift                     // Enum defining navigation routes
│   └── Item.swift                         // Model representing an item with properties like name and description

├── Preview Content/                       // Xcode's auto-generated folder for previews
│   └── Preview Assets.xcassets            // Placeholder for preview images and assets

├── Router/                                // Responsible for navigation handling and router setup
│   ├── CompatibleNavigationView.swift     // Provides compatibility between NavigationStack (iOS 16+) and NavigationView (iOS <16)
│   └── ContentView.swift                  // The main content view, setting up the initial navigation environment with the router

├── Screens/                               // Contains the individual screen views for the app
│   ├── DetailsView.swift                  // Screen for displaying details of an Item
│   ├── HomeView.swift                     // Screen for the home view, first screen in the navigation flow
│   └── SettingsView.swift                 // Screen for the settings, showcasing another possible route

├── Utilities/                             // Contains utility files and reusable components
│   ├── Extension/                         // Folder for custom SwiftUI view extensions
│   │   └── View+Extension.swift           // Extension adding custom styling or other utilities to views
│   └── View/                              // Folder for view-related utilities, like modifiers
│       └── ViewModifier/                  // Subfolder for custom SwiftUI modifiers
│           └── CustomNavBarModifier.swift // Custom navigation bar modifier to handle consistent nav bar styling and actions

├── ViewModel/                             // Manages the business logic and state of the app
│   ├── NavigationRouter.swift             // Main router responsible for handling navigation and managing selected routes
│   └── ViewModel.swift                    // General ViewModel managing app data and business logic

└── Assets.xcassets                        // Folder for managing image and color assets used in the app




### Prerequisites
- **iOS Version:** The project targets iOS 16 and above.
- **Swift Version:** Requires Swift 5.0 or later.
- **Xcode Version:** Developed and tested with Xcode 14 or later.


### Clone the Repository

```bash
git clone [https://github.com/waqas-git/NavigationRouterExample.git]
