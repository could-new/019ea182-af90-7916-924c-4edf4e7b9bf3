# ATS-Friendly Resume Builder

An interactive, responsive Flutter web application that generates an ATS-friendly resume based on a professional two-column template. It accurately mirrors industry-standard CV layouts, ensuring semantic structure for Applicant Tracking Systems.

## Features

- **ATS-Friendly Structure**: Uses clean, selectable text and clear hierarchical sections to ensure maximum parseability by automated resume screening tools.
- **Two-Column Professional Layout**: Matches the structure of the provided template with a sidebar for contact, skills, and education, and a main body for professional experience.
- **Responsive Design**: Adapts beautifully from desktop/tablet viewing to a stacked mobile layout.
- **Selectable Content**: All text is fully selectable, mimicking the behavior of a generated PDF document.

## Tech Stack

- **Framework**: Flutter
- **Platform**: Cross-platform (Web, Desktop, iOS, Android)
- **Design System**: Material Design 3

## Setup & Run

1. Make sure you have Flutter installed.
2. Clone this repository.
3. Run `flutter pub get` to install dependencies.
4. Run `flutter run -d chrome` to preview the resume app in your browser.

## Deployment

The app is ready to be compiled to web and hosted on any static site hosting service (like Firebase Hosting, GitHub Pages, or Vercel). Run `flutter build web` to generate the production build.

---

## About CouldAI

This app was generated with [CouldAI](https://could.ai), an AI app builder for cross-platform apps that turns prompts into real native iOS, Android, Web, and Desktop apps with autonomous AI agents that architect, build, test, deploy, and iterate production-ready applications.
