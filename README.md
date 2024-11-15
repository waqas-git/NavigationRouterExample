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

NavigationRouterExample/
├── Models/
│   ├── AppRoute.swift
│   └── Item.swift
├── Preview Content/
│   └── Preview Assets.xcassets
├── Router/
│   ├── CompatibleNavigationView.swift
│   └── ContentView.swift
├── Screens/
│   ├── DetailsView.swift
│   ├── HomeView.swift
│   └── SettingsView.swift
├── Utilities/
│   ├── Extension/
│   │   └── View+Extension.swift
│   └── View/
│       └── ViewModifier/
│           └── CustomNavBarModifier.swift
├── ViewModel/
│   ├── NavigationRouter.swift
│   └── ViewModel.swift
└── Assets.xcassets



### Prerequisites
- **iOS Version:** The project targets iOS 16 and above.
- **Swift Version:** Requires Swift 5.0 or later.
- **Xcode Version:** Developed and tested with Xcode 14 or later.


### Clone the Repository

```bash
git clone [https://github.com/waqas-git/NavigationRouterExample.git]
