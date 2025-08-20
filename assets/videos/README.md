# Background Video

Place your background video file here.

## Supported Formats
- MP4 (recommended)
- MOV
- AVI

## File Naming
Name your video file `background.mp4` or update the `videoPath` parameter in the screen files.

## Video Requirements
- **Resolution**: 1920x1080 or higher for best quality
- **Duration**: 10-30 seconds (will loop automatically)
- **File Size**: Keep under 50MB for optimal performance
- **Format**: H.264 encoded MP4 is recommended

## Update Paths
After adding your video, update these files:
- `lib/screens/login_screen.dart` (line ~200)
- `lib/screens/register_screen.dart` (line ~200)  
- `lib/screens/reset_password_screen.dart` (line ~100)

Change the `videoPath` parameter to match your filename:
```dart
videoPath: 'assets/videos/your_video_name.mp4'
```

## Fallback
If no video is provided, the app will automatically use a beautiful gradient background.
