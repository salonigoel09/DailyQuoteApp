# Daily Quote App 📜

A colorful and minimal Flutter application that displays daily inspirational quotes.
Users can refresh quotes, mark favorites, view saved quotes, and share quotes easily.

This project was built as part of a Mobile Application Developer assignment,
with a strong focus on AI-assisted development and design tools.

---

## ✨ Features

- Display a random daily quote
- Refresh quote with a single tap
- Mark quotes as favorites (heart icon toggle)
- View all favorite quotes in a separate screen
- Persistent storage using local device storage
- Share quotes via system share sheet
- Clean, colorful, card-based UI

---

## 🛠️ Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **API:** ZenQuotes (Public Quote API)
- **Local Storage:** SharedPreferences
- **UI Design Inspiration:** Stitch (Google)

---

## 🤖 AI Tools Used

- **ChatGPT**
  - App architecture and screen separation
  - API integration
  - Debugging network and runtime issues
  - UI refactoring and state handling

- **Stitch (Google)**
  - Prompt-based UI design generation
  - Layout inspiration and visual hierarchy

---

## 🧠 AI Workflow (How I Used AI Effectively)

1. Generated the initial Flutter app structure using ChatGPT
2. Used AI to integrate a public quote API and handle API failures
3. Debugged network/SSL issues with AI assistance and switched APIs
4. Iterated on UI design based on Stitch-generated layouts
5. Refactored code from a single file into multiple screens for better maintainability
6. Used AI to improve UI consistency, colors, and user interactions

---

## 🎨 UI Design

The UI was inspired by designs generated using **Stitch Make**.
The final Flutter UI closely follows the same structure:
- Top title section
- Center quote card
- Author text below the quote
- Bottom action buttons for refresh, favorite, and share

### Stitch Make Designs

**Home Screen**
![Stitch Home](screenshots/home_screen.png)

**Favorites Screen**
![Stitch Favorites](screenshots/favourite_screen.png)


---

## 🚀 Setup Instructions

1. Clone the repository
2. Run the following commands:

```bash
flutter pub get
flutter run
