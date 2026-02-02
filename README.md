# Hafiz Ijaz Ul Hassan - Portfolio

[![Flutter](https://img.shields.io/badge/Flutter-3.7.9-%2302569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2.19.6-%230175C2?logo=dart)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**Live Preview:** 👉 [hafiz-ijaz-ul-hassan.web.app](https://hafiz-ijaz-ul-hassan.web.app/)

Welcome to my personal portfolio repository! This project serves as a showcase of my professional journey, skills, and projects as a Mobile Application Developer specializing in Flutter and Android. It is a modern, responsive web application built entirely with Flutter, demonstrating the framework's capabilities for web development.

---

## 🚀 Key Features

*   **Responsive Design:** optimized for Mobile, Tablet, and Desktop views using a custom `ResponsiveLayout` wrapper.
*   **Interactive UI:** Features a dynamic particle network background (`particles_network`) and smooth entry animations (`flutter_animate`).
*   **Navigation:** Deep linking and persistent shell navigation powered by `go_router`.
*   **Clean Architecture:** Structured using a feature-first approach for scalability and maintainability.
*   **Modern Styling:** Custom theme based on Google Fonts (Poppins) and a professional color palette.

## �️ Tech Stack

*   **Framework:** [Flutter](https://flutter.dev) (Web)
*   **Language:** [Dart](https://dart.dev)
*   **State Management:** `StatefulWidget` & Local State (Simple & Efficient for this scale)
*   **Routing:** [go_router](https://pub.dev/packages/go_router)
*   **Animations:** [flutter_animate](https://pub.dev/packages/flutter_animate), [particles_network](https://pub.dev/packages/particles_network)
*   **UI Components:** [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter), [google_fonts](https://pub.dev/packages/google_fonts)
*   **Hosting:** Firebase Hosting

## 📂 Project Structure

The codebase follows a feature-first architecture to ensure modularity:

```
lib/src/
├── common_widgets/    # Reusable UI components (Scaffold, Responsive Layouts)
├── constants/         # App-wide constants (Colors, Sizes, Strings)
├── features/          # Feature modules containing presentation logic
│   ├── home/          # Landing page, Hero section, Skills
│   ├── projects/      # Portfolio showcase
│   ├── experience/    # Professional timeline
│   ├── about/         # Personal bio
│   └── contact/       # Contact information
└── routing/           # Navigation configuration (GoRouter)
```

## ⚡ Getting Started

Follow these steps to set up the project locally on your machine.

### Prerequisites

*   [Flutter SDK](https://docs.flutter.dev/get-started/install) (Version 3.7.0 or higher recommended)
*   [Dart SDK](https://dart.dev/get-dart)
*   An IDE like [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/)

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/hafizijaz656/hafiz-ijaz-ul-hassan.git
    cd hafiz-ijaz-ul-hassan-main
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Run the app:**
    ```bash
    # For Chrome
    flutter run -d chrome
    ```

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

## 👨‍💻 Developed By

**Hafiz Ijaz Ul Hassan**

*   **GitHub:** [@hafizijaz656](https://github.com/hafizijaz656)
*   **LinkedIn:** [Hafiz Ijaz Ul Hassan](https://www.linkedin.com/in/hafiz-ijaz-ul-hassan-846973170)
*   **Email:** [hafizijaz656@gmail.com](mailto:hafizijaz656@gmail.com)

---

*Thank you for visiting my portfolio! If you find this project interesting, please consider giving it a star ⭐.*
