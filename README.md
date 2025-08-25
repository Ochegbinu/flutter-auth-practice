# 🔐 Flutter Login & Signup UI

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-blue?style=for-the-badge)](https://flutter.dev/multi-platform)

A sleek and responsive Flutter UI package providing beautiful **Login** and **Signup** screens with clean design, smooth navigation, and cross-platform compatibility.

## 📱 Screenshots

*Open this link to see the login and signup screens*

```
[[Login Screen]     [Signup Screen]](https://www.linkedin.com/posts/saqib-cheema-77bab0297_flutter-mobileappdevelopment-uiux-activity-7326321902602305536-RHH-?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAEfjJ08BB8LQb4521wTK20f0RNJ7OwuQMA4)
```

## ✨ Features

- 🎨 **Clean & Modern UI** - Beautiful, intuitive design with custom fonts
- 📱 **Cross-Platform** - Works on Android, iOS, Web, and Desktop
- 🔤 **Custom Typography** - Integrated Zaki font family for consistent branding
- 🖼️ **Logo Integration** - Easy logo customization and branding
- 🧭 **Smooth Navigation** - Seamless transitions between login and signup screens
- 📝 **Form Validation Ready** - Structure ready for implementing form validation
- 🎯 **Responsive Design** - Adapts to different screen sizes and orientations
- 🚀 **Easy Integration** - Simple to integrate with backend services and state management

## 🛠️ Tech Stack

- **Framework:** Flutter 3.7.0+
- **Language:** Dart
- **UI Components:** Material Design
- **Navigation:** Named Routes
- **Fonts:** Zaki (Medium & Regular)

## 📋 Requirements

- Flutter SDK: 3.7.0 or higher
- Dart SDK: 3.7.0 or higher
- Android Studio / VS Code
- Git

## 🚀 Getting Started

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/saqibcheema/login_signup_flutter.git
   cd login_signup_flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Quick Setup

```bash
# Clone and run in one go
git clone https://github.com/saqibcheema/login_signup_flutter.git
cd login_signup_flutter
flutter pub get
flutter run
```

## 📁 Project Structure

```
login_signup_flutter/
├── lib/
│   ├── main.dart          # App entry point & routing
│   ├── login.dart         # Login screen UI
│   └── signup.dart        # Signup screen UI
├── images/
│   └── logo.png          # App logo
├── fonts/
│   ├── Zaki-Medium.ttf  # Custom font
│   └── Zaki-Regular.ttf # Custom font
├── android/              # Android platform files
├── ios/                  # iOS platform files
├── web/                  # Web platform files
└── pubspec.yaml         # Dependencies & assets
```

## 💻 Usage

### Basic Implementation

The app uses Flutter's named routing system for navigation:

```dart
// Main app setup
MaterialApp(
  initialRoute: HomeScreen.id,
  routes: {
    HomeScreen.id: (context) => HomeScreen(),    // Login Screen
    ScreenTwo.id: (context) => ScreenTwo(),      // Signup Screen
  },
)
```

### Navigation Between Screens

```dart
// Navigate to Signup
Navigator.pushNamed(context, ScreenTwo.id);

// Navigate to Login
Navigator.pushNamed(context, HomeScreen.id);
```

### Customization

1. **Update Logo**: Replace `images/logo.png` with your logo
2. **Modify Colors**: Update color schemes in the UI files
3. **Add Validation**: Implement form validation logic
4. **Backend Integration**: Connect with your authentication API

## 🎨 Customization Guide

### Changing Colors
```dart
// Update primary colors in your screens
Container(
  decoration: BoxDecoration(
    color: Colors.blue,  // Change to your brand color
  ),
)
```

### Adding Form Validation
```dart
// Example validation structure
final _formKey = GlobalKey();

TextFormField(
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  },
)
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Commit your changes**
   ```bash
   git commit -m 'Add some amazing feature'
   ```
4. **Push to the branch**
   ```bash
   git push origin feature/amazing-feature
   ```
5. **Open a Pull Request**

### Contribution Guidelines

- Follow Flutter/Dart coding standards
- Add comments for complex logic
- Test your changes on multiple platforms
- Update documentation if needed
- Ensure responsive design principles

## 🐛 Issues & Bug Reports

Found a bug? Please open an issue with:
- Device/Platform information
- Flutter version
- Steps to reproduce
- Expected vs actual behavior
- Screenshots (if applicable)

## 🔮 Roadmap

- [ ] Add form validation
- [ ] Implement biometric authentication
- [ ] Add social media login options
- [ ] Dark mode support
- [ ] Animations and micro-interactions
- [ ] Backend integration examples
- [ ] Unit and widget tests

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Saqib Cheema**
- GitHub: [@saqibcheema](https://github.com/saqibcheema)
- Repository: [login_signup_flutter](https://github.com/saqibcheema/login_signup_flutter)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for UI guidelines
- Zaki font family contributors

## 📞 Support

If you like this project, please give it a ⭐ on GitHub!

For questions or support, please open an issue or reach out through GitHub.

---


  Happy Coding! 🚀
# flutter-auth-practice
