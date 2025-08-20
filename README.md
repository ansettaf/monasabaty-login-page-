# Monasabaty Frontend - Premium Authentication App

A modern, premium Flutter authentication app with sleek design inspired by Glovo, featuring video backgrounds, social login options, and smooth animations.

## ✨ Features

### 🎨 Design & UI
- **Premium Glovo-like styling** with #A18CD1 accent color
- **Full-screen video background** (autoplay, loop, cover)
- **Responsive design** for mobile, tablet, and desktop
- **Clean typography** and modern input fields
- **Subtle hover and focus effects**
- **Smooth animations** and transitions

### 🔐 Authentication Pages
- **Login Screen** - Email and password authentication
- **Register Screen** - Full registration with validation
- **Reset Password Screen** - Email-based password reset

### 🌐 Social Login Options
- **Google (Gmail)** integration
- **Facebook** integration  
- **Twitter** integration

### ✅ Form Validation
- **Email format validation**
- **Password strength requirements**
- **Real-time validation feedback**
- **Success/error messages**

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or physical device

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd monasabaty-frontend
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add your background video**
   - Place your video file in `assets/videos/`
   - Update the `videoPath` in all screen files:
     - `lib/screens/login_screen.dart` (line ~200)
     - `lib/screens/register_screen.dart` (line ~200)
     - `lib/screens/reset_password_screen.dart` (line ~100)

4. **Run the app**
   ```bash
   flutter run
   ```

## 📱 App Structure

```
lib/
├── main.dart                 # App entry point and theme configuration
├── screens/                  # Authentication screens
│   ├── login_screen.dart    # Login page
│   ├── register_screen.dart # Registration page
│   └── reset_password_screen.dart # Password reset page
└── widgets/                  # Reusable UI components
    ├── video_background.dart # Video background widget
    ├── social_login_button.dart # Social login buttons
    └── custom_text_field.dart # Custom input fields
```

## 🎨 Customization

### Colors
The app uses a premium color palette centered around `#A18CD1`. You can customize colors in:
- `lib/main.dart` - Theme configuration
- Individual screen files for specific elements

### Video Background
To change the background video:
1. Add your video file to `assets/videos/`
2. Update the `videoPath` parameter in all screen files
3. Supported formats: MP4, MOV, AVI

### Social Login
Customize social login buttons in `lib/widgets/social_login_button.dart`:
- Add new platforms
- Modify colors and icons
- Update authentication logic

## 📦 Dependencies

- **video_player**: Background video playback
- **font_awesome_flutter**: Social media icons
- **google_fonts**: Premium typography (Poppins)
- **flutter_animate**: Smooth animations and transitions
- **flutter_svg**: SVG support for icons

## 🔧 Configuration

### Video Background
The app automatically falls back to a gradient background if video loading fails. This ensures the app works even without video files.

### Form Validation
All forms include comprehensive validation:
- **Email**: Format and required field validation
- **Password**: Length and complexity requirements
- **Name**: Minimum length validation
- **Confirm Password**: Matching validation

### Responsive Design
The app automatically adapts to different screen sizes:
- **Mobile**: Optimized for small screens
- **Tablet**: Enhanced spacing and layout
- **Desktop**: Full-width experience

## 🚀 Deployment

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 📝 Notes

- The app includes simulated API calls (2-second delays) for demonstration
- Social login buttons show loading states during authentication
- All forms include proper error handling and user feedback
- The video background widget gracefully handles loading failures

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

If you encounter any issues or have questions:
1. Check the Flutter documentation
2. Review the code comments
3. Open an issue in the repository

---

**Built with ❤️ using Flutter**
