# Portfolio Project Context & Architecture

## Overview
This project is a personal portfolio website built with **Flutter Web**. It showcases the professional profile, skills, projects, and experience of **Hafiz Ijaz Ul Hassan**. The application is designed to be fully responsive, accessible, and performant, utilizing modern Flutter best practices.

## Architecture & Structure
The project follows a **Feature-First** directory structure, grouping code by domain features rather than technical layers.

### Directory Structure (`lib/src/`)
- **`common_widgets/`**: Reusable UI components used across multiple features (e.g., `ResponsiveLayout`, `ScaffoldWithNavigation`).
- **`constants/`**: Application-wide constants.
  - `app_content.dart`: **Centralized data source** for texts, project lists, skills, and expertise.
  - `app_colors.dart`: Color palette definitions.
  - `app_sizes.dart`: Layout constants (padding, gaps).
- **`features/`**: Core functionality modules.
  - `home/`: Landing page sections (Hero, Expertise, Skills, Featured Projects, Pub.dev).
  - `about/`: Biography and statistics.
  - `experience/`: Professional journey timeline.
  - `projects/`: Full project gallery with filtering.
  - `contact/`: Contact information and form.
- **`routing/`**: Navigation configuration using `GoRouter`.
- **`utils/`**: Helper functions (e.g., responsive helpers).

## Key Components

### 1. Centralized Content Management (`AppContent`)
**File:** `lib/src/constants/app_content.dart`
All static data (projects, skills, experience entries) is decoupled from UI widgets and stored in the `AppContent` class.
- **Usage**: To add a new project or skill, simply update the static lists in `AppContent`. The UI will automatically reflect changes.

### 2. Responsive Design (`ResponsiveLayout`)
**File:** `lib/src/common_widgets/responsive_layout.dart`
A utility widget that renders different UI layouts based on screen width.
- **Breakpoints**:
  - Mobile: < 600px
  - Tablet: 600px - 1100px
  - Desktop: > 1100px
- **Usage**:
  ```dart
  ResponsiveLayout(
    mobileBody: MobileView(),
    tabletBody: TabletView(),
    desktopBody: DesktopView(),
  )
  ```

### 3. Navigation
**File:** `lib/src/routing/router.dart`
Uses `GoRouter` for declarative routing.
- Implements a `ShellRoute` to maintain a persistent navigation bar/scaffold while switching pages.

## Recent Improvements (as of Feb 2026)

### Visual & UX Enhancements
1.  **Alternating Backgrounds**: Sections on the Home page now alternate between White and Light Grey to improve visual hierarchy and readability.
2.  **Hover Effects**: Added interactive hover animations (scale, shadow) to `ExpertiseCard` and `SkillCard`.
3.  **Home Project Preview**: Added a `HomeFeaturedProjectsSection` to display top 3 projects directly on the landing page.

### Mobile Optimization
Significant work was done to ensure a native-feeling experience on mobile devices:
- **Experience Section**: Converted the desktop "zig-zag" timeline into a clean, single-column vertical timeline for mobile.
- **Header Responsiveness**: Refactored section headers in `FeaturedProjectsSection`, `PubDevSection`, and `HomeFeaturedProjectsSection` to stack vertically on mobile.
- **About Me Stats**: Forced `_StatsRow` cards to take full width on mobile for better readability.

### Maintenance & Identity
- **License**: Updated `LICENSE` file to "Hafiz Ijaz Ul Hassan".
- **Manifest**: Updated `web/manifest.json` with correct app name and description.

## Future Development Guidelines

### Adding a New Project
1.  Open `lib/src/constants/app_content.dart`.
2.  Add a new `Project` object to the `projects` list.
3.  Ensure the `category` matches existing filters or update `_FilterButtons` if adding a new category.

### Modifying Styles
- **Colors**: Update `lib/src/constants/app_colors.dart`.
- **Theme**: Global theme adjustments should be made in `lib/main.dart` (ThemeData).

### adding New Sections
1.  Create the section widget in the appropriate `features/.../presentation/sections/` folder.
2.  Ensure it uses `ResponsiveLayout` to handle mobile views.
3.  Add it to the relevant screen's `Column` or `ListView`.
